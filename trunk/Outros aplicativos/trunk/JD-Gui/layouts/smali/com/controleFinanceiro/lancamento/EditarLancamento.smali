.class public Lcom/controleFinanceiro/lancamento/EditarLancamento;
.super Landroid/app/Activity;
.source "EditarLancamento.java"


# static fields
.field protected static final DIALOG_PAGAMENTO:I = 0x1

.field protected static final DIALOG_VENCIMENTO:I = 0x0

.field protected static final INSERIR_EMPRESA:I = 0x3

.field static final RESULT_EXCLUIR:I = 0x2

.field static final RESULT_SALVAR:I = 0x1


# instance fields
.field private anoPagamento:I

.field private anoVencimento:I

.field private campoDataPagamento:Ljava/lang/String;

.field private campoDesconto:Ljava/lang/String;

.field private campoEMP_CH_TELEFONE:Landroid/widget/EditText;

.field private campoEMP_ST_NOME:Landroid/widget/EditText;

.field private campoLAN_DT_PAGAMENTO:Landroid/widget/Button;

.field private campoLAN_DT_VENCIMENTO:Landroid/widget/Button;

.field private campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

.field private campoLAN_IN_CONTA:Landroid/widget/Spinner;

.field private campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

.field private campoLAN_IN_STATUS:Landroid/widget/Spinner;

.field private campoLAN_RE_DESCONTO:Landroid/widget/EditText;

.field private campoLAN_RE_MULTA:Landroid/widget/EditText;

.field private campoLAN_RE_VALOR:Landroid/widget/EditText;

.field private campoLAN_ST_DESCRICAO:Landroid/widget/EditText;

.field private campoLAN_ST_OBSERVACAO:Landroid/widget/EditText;

.field private campoMulta:Ljava/lang/String;

.field private campoQtdParcela:Landroid/widget/EditText;

.field private checkReplicar:Landroid/widget/CheckBox;

.field private codigoCategoria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private codigoConta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private codigoEmpresa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private comboCategoria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private comboConta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private comboEmpresa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private comboStatus:[Ljava/lang/String;

.field private dataPagamentoBD:Ljava/lang/String;

.field private dataVencimentoBD:Ljava/lang/String;

.field private diaPagamento:I

.field private diaVencimento:I

.field private id:Ljava/lang/Long;

.field private janelaBaixa:Landroid/app/AlertDialog;

.field private janelaEmpresa:Landroid/app/AlertDialog;

.field private janelaVisualizarPagamento:Landroid/app/AlertDialog;

.field private listaCategoria:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/categoria/Categoria;",
            ">;"
        }
    .end annotation
.end field

.field private listaConta:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/conta/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private listaEmpresa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/empresa/Empresa;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPagamentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDataVencimentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mesPagamento:I

.field private mesVencimento:I

.field private textQtdParcela:Landroid/widget/TextView;

.field private textoLAN_DT_PAGAMENTO:Landroid/widget/TextView;

.field private textoLAN_RE_DESCONTO:Landroid/widget/TextView;

.field private textoLAN_RE_MULTA:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Aberto"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Conclu\u00eddo"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboStatus:[Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoCategoria:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoConta:Ljava/util/List;

    .line 435
    new-instance v0, Lcom/controleFinanceiro/lancamento/EditarLancamento$1;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$1;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mDataVencimentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 457
    new-instance v0, Lcom/controleFinanceiro/lancamento/EditarLancamento$2;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$2;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mDataPagamentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/lancamento/EditarLancamento;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoVencimento:I

    return-void
.end method

.method static synthetic access$1(Lcom/controleFinanceiro/lancamento/EditarLancamento;I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesVencimento:I

    return-void
.end method

.method static synthetic access$10(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_DESCONTO:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$11(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_MULTA:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$12(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_DT_PAGAMENTO:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$13(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_DESCONTO:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoDesconto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_MULTA:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$16(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoMulta:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_DT_PAGAMENTO:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$18(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoDataPagamento:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textoLAN_RE_DESCONTO:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/controleFinanceiro/lancamento/EditarLancamento;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaVencimento:I

    return-void
.end method

.method static synthetic access$20(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textoLAN_RE_MULTA:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$21(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textoLAN_DT_PAGAMENTO:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$22(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textoLAN_RE_DESCONTO:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textoLAN_RE_MULTA:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textoLAN_DT_PAGAMENTO:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaBaixa:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$26(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaVisualizarPagamento:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$27(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoEMP_ST_NOME:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$28(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$3(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->atualizarVencimento()V

    return-void
.end method

.method static synthetic access$4(Lcom/controleFinanceiro/lancamento/EditarLancamento;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoPagamento:I

    return-void
.end method

.method static synthetic access$5(Lcom/controleFinanceiro/lancamento/EditarLancamento;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesPagamento:I

    return-void
.end method

.method static synthetic access$6(Lcom/controleFinanceiro/lancamento/EditarLancamento;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaPagamento:I

    return-void
.end method

.method static synthetic access$7(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->atualizarPagamento()V

    return-void
.end method

.method static synthetic access$8(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->checkReplicar:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$9(Lcom/controleFinanceiro/lancamento/EditarLancamento;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoQtdParcela:Landroid/widget/EditText;

    return-object v0
.end method

.method private atualizarPagamento()V
    .locals 5

    .prologue
    const-string v4, "/"

    const-string v3, "-"

    .line 447
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_DT_PAGAMENTO:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    iget v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaPagamento:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 449
    iget v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesPagamento:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    iget v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoPagamento:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoPagamento:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesPagamento:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaPagamento:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataPagamentoBD:Ljava/lang/String;

    .line 453
    return-void
.end method

.method private atualizarVencimento()V
    .locals 5

    .prologue
    const-string v4, "/"

    const-string v3, "-"

    .line 425
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_DT_VENCIMENTO:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    iget v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaVencimento:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    iget v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesVencimento:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    iget v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoVencimento:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoVencimento:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesVencimento:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaVencimento:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataVencimentoBD:Ljava/lang/String;

    .line 431
    return-void
.end method

.method private fillListaCategoria(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/categoria/Categoria;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/categoria/Categoria;>;"
    const/4 v4, 0x1

    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 377
    return-object v1

    .line 369
    :cond_0
    if-nez v0, :cond_1

    .line 370
    const-string v2, "Selecione..."

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoCategoria:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_1
    sub-int v2, v0, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/controleFinanceiro/categoria/Categoria;

    iget-object v2, v2, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoCategoria:Ljava/util/List;

    sub-int v2, v0, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/controleFinanceiro/categoria/Categoria;

    iget v2, v2, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private fillListaConta(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/conta/Conta;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/conta/Conta;>;"
    const/4 v4, 0x1

    .line 395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 409
    return-object v1

    .line 397
    :cond_0
    if-nez v0, :cond_1

    .line 398
    const-string v2, "Selecione..."

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoConta:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_1
    sub-int v2, v0, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/controleFinanceiro/conta/Conta;

    iget-object v2, v2, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoConta:Ljava/util/List;

    sub-int v2, v0, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/controleFinanceiro/conta/Conta;

    iget v2, v2, Lcom/controleFinanceiro/conta/Conta;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private fillListaEmpresa(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/empresa/Empresa;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/empresa/Empresa;>;"
    const/4 v4, 0x1

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 391
    return-object v1

    .line 383
    :cond_0
    if-nez v0, :cond_1

    .line 384
    const-string v2, "Selecione..."

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    sub-int v2, v0, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/controleFinanceiro/empresa/Empresa;

    iget-object v2, v2, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    sub-int v2, v0, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/controleFinanceiro/empresa/Empresa;

    iget v2, v2, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected buscarLancamento(J)Lcom/controleFinanceiro/lancamento/Lancamento;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 741
    sget-object v0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->buscarLancamento(J)Lcom/controleFinanceiro/lancamento/Lancamento;

    move-result-object v0

    return-object v0
.end method

.method public excluir()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->excluirLancamento(J)V

    .line 642
    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setResult(ILandroid/content/Intent;)V

    .line 645
    invoke-virtual {p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->finish()V

    .line 646
    return-void
.end method

.method protected excluirLancamento(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 751
    sget-object v0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->deletar(J)I

    .line 752
    return-void
.end method

.method public fecharJanelaBaixa()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaBaixa:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 756
    return-void
.end method

.method public fecharJanelaEmpresa()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaEmpresa:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 700
    return-void
.end method

.method public fecharJanelaVisualizarPagamento()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaVisualizarPagamento:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 760
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v26, 0x7f030008

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setContentView(I)V

    .line 114
    const v26, 0x7f06002a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "icicle":Landroid/os/Bundle;
    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_DESCRICAO:Landroid/widget/EditText;

    .line 115
    const v26, 0x7f06002d

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_DT_VENCIMENTO:Landroid/widget/Button;

    .line 116
    const v26, 0x7f060031

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_STATUS:Landroid/widget/Spinner;

    .line 117
    const v26, 0x7f060030

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    .line 118
    const v26, 0x7f060032

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_VALOR:Landroid/widget/EditText;

    .line 119
    const v26, 0x7f06002c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    .line 120
    const v26, 0x7f06002f

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CONTA:Landroid/widget/Spinner;

    .line 121
    const v26, 0x7f060034

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_OBSERVACAO:Landroid/widget/EditText;

    .line 122
    const v26, 0x7f060035

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->checkReplicar:Landroid/widget/CheckBox;

    .line 123
    const v26, 0x7f060037

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoQtdParcela:Landroid/widget/EditText;

    .line 124
    const v26, 0x7f060036

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textQtdParcela:Landroid/widget/TextView;

    .line 126
    const v26, 0x7f06003a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 127
    .local v10, "btExcluir":Landroid/widget/Button;
    const v26, 0x7f06003b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 128
    .local v8, "btBaixar":Landroid/widget/Button;
    const v26, 0x7f06003c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 130
    .local v12, "btVisualizarPagamento":Landroid/widget/Button;
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v26, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboStatus:[Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 131
    .local v7, "adaptadorStatus":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v26, 0x1090009

    move-object v0, v7

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_STATUS:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 134
    new-instance v15, Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;-><init>(Landroid/content/Context;)V

    .line 135
    .local v15, "categoriaDB":Lcom/controleFinanceiro/categoria/RepositorioCategoria;
    invoke-virtual {v15}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->carregaComboCategoria()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaCategoria:Ljava/util/List;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaCategoria:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->fillListaCategoria(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboCategoria:Ljava/util/List;

    .line 138
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v26, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboCategoria:Ljava/util/List;

    move-object/from16 v27, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 139
    .local v4, "adaptadorCategoria":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v26, 0x1090009

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    new-instance v17, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;-><init>(Landroid/content/Context;)V

    .line 143
    .local v17, "empresaDB":Lcom/controleFinanceiro/empresa/RepositorioEmpresa;
    invoke-virtual/range {v17 .. v17}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->carregaComboEmpresa()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaEmpresa:Ljava/util/List;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaEmpresa:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->fillListaEmpresa(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboEmpresa:Ljava/util/List;

    .line 146
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v26, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboEmpresa:Ljava/util/List;

    move-object/from16 v27, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 147
    .local v6, "adaptadorEmpresa":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v26, 0x1090009

    move-object v0, v6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 150
    new-instance v16, Lcom/controleFinanceiro/conta/RepositorioConta;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/conta/RepositorioConta;-><init>(Landroid/content/Context;)V

    .line 151
    .local v16, "contaDB":Lcom/controleFinanceiro/conta/RepositorioConta;
    invoke-virtual/range {v16 .. v16}, Lcom/controleFinanceiro/conta/RepositorioConta;->carregaComboConta()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaConta:Ljava/util/List;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaConta:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->fillListaConta(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboConta:Ljava/util/List;

    .line 154
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v26, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboConta:Ljava/util/List;

    move-object/from16 v27, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 155
    .local v5, "adaptadorConta":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v26, 0x1090009

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CONTA:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_DT_VENCIMENTO:Landroid/widget/Button;

    move-object/from16 v26, v0

    new-instance v27, Lcom/controleFinanceiro/lancamento/EditarLancamento$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento$3;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->checkReplicar:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    new-instance v27, Lcom/controleFinanceiro/lancamento/EditarLancamento$4;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento$4;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    invoke-virtual/range {v26 .. v27}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 180
    .local v14, "cal":Ljava/util/Calendar;
    const/16 v26, 0x1

    move-object v0, v14

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoVencimento:I

    .line 181
    const/16 v26, 0x2

    move-object v0, v14

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesVencimento:I

    .line 182
    const/16 v26, 0x5

    move-object v0, v14

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaVencimento:I

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->atualizarVencimento()V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 189
    .local v18, "extras":Landroid/os/Bundle;
    if-eqz v18, :cond_0

    .line 190
    const-string v26, "_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->buscarLancamento(J)Lcom/controleFinanceiro/lancamento/Lancamento;

    move-result-object v13

    .line 195
    .local v13, "c":Lcom/controleFinanceiro/lancamento/Lancamento;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_DESCRICAO:Landroid/widget/EditText;

    move-object/from16 v26, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v26, "dd/MM/yyyy"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v21, "formato":Ljava/text/SimpleDateFormat;
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 199
    .local v23, "vencimento_formatado":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_DT_VENCIMENTO:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataVencimentoBD:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_STATUS:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object v0, v13

    iget v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    .line 204
    move-object v0, v13

    iget v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 205
    const/16 v26, 0x4

    move-object v0, v8

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 210
    :goto_0
    new-instance v22, Ljava/util/Locale;

    const-string v26, "pt"

    const-string v27, "BR"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v22, "local":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_VALOR:Landroid/widget/EditText;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v22}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v27

    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoCategoria:Ljava/util/List;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CONTA:Landroid/widget/Spinner;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoConta:Ljava/util/List;

    move-object/from16 v27, v0

    move-object v0, v13

    iget v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Spinner;->setSelection(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_OBSERVACAO:Landroid/widget/EditText;

    move-object/from16 v26, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_OBSERVACAO:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/sql/Date;->getYear()I

    move-result v26

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x76c

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoVencimento:I

    .line 218
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/sql/Date;->getMonth()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesVencimento:I

    .line 219
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/sql/Date;->getDate()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaVencimento:I

    .line 221
    invoke-static/range {v22 .. v22}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v26

    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_DESCONTO:Ljava/lang/Number;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoDesconto:Ljava/lang/String;

    .line 222
    invoke-static/range {v22 .. v22}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v26

    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_MULTA:Ljava/lang/Number;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoMulta:Ljava/lang/String;

    .line 223
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoDataPagamento:Ljava/lang/String;

    .line 225
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataPagamentoBD:Ljava/lang/String;

    .line 227
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/sql/Date;->getYear()I

    move-result v26

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x76c

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoPagamento:I

    .line 228
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/sql/Date;->getMonth()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesPagamento:I

    .line 229
    move-object v0, v13

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/sql/Date;->getDate()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaPagamento:I

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->checkReplicar:Landroid/widget/CheckBox;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoQtdParcela:Landroid/widget/EditText;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/widget/EditText;->setVisibility(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->textQtdParcela:Landroid/widget/TextView;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    .end local v13    # "c":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v21    # "formato":Ljava/text/SimpleDateFormat;
    .end local v22    # "local":Ljava/util/Locale;
    .end local v23    # "vencimento_formatado":Ljava/lang/String;
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    .line 238
    .local v19, "factoryBaixar":Landroid/view/LayoutInflater;
    const v26, 0x7f03000d

    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 239
    .local v24, "viewBaixar":Landroid/view/View;
    new-instance v26, Lcom/controleFinanceiro/lancamento/EditarLancamento$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/controleFinanceiro/lancamento/EditarLancamento$5;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaBaixa:Landroid/app/AlertDialog;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaBaixa:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    const v27, 0x7f02000b

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaBaixa:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    const v27, 0x7f050058

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaBaixa:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 280
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    .line 281
    .local v20, "factoryVisualizarPagamento":Landroid/view/LayoutInflater;
    const v26, 0x7f030011

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v25

    .line 282
    .local v25, "viewVisualizarPagamento":Landroid/view/View;
    new-instance v26, Lcom/controleFinanceiro/lancamento/EditarLancamento$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/controleFinanceiro/lancamento/EditarLancamento$6;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaVisualizarPagamento:Landroid/app/AlertDialog;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaVisualizarPagamento:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    const v27, 0x7f02001d

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaVisualizarPagamento:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    const v27, 0x7f05002b

    invoke-virtual/range {v26 .. v27}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaVisualizarPagamento:Landroid/app/AlertDialog;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 308
    const v26, 0x7f060039

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 309
    .local v9, "btCancelar":Landroid/widget/Button;
    new-instance v26, Lcom/controleFinanceiro/lancamento/EditarLancamento$7;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento$7;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    move-object v0, v9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v26, 0x7f060038

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 319
    .local v11, "btSalvar":Landroid/widget/Button;
    new-instance v26, Lcom/controleFinanceiro/lancamento/EditarLancamento$8;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento$8;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    move-object v0, v11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 327
    const/16 v26, 0x4

    move-object v0, v10

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    const/16 v26, 0x4

    move-object v0, v8

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    const/16 v26, 0x4

    move-object v0, v12

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    :goto_1
    return-void

    .line 207
    .end local v9    # "btCancelar":Landroid/widget/Button;
    .end local v11    # "btSalvar":Landroid/widget/Button;
    .end local v19    # "factoryBaixar":Landroid/view/LayoutInflater;
    .end local v20    # "factoryVisualizarPagamento":Landroid/view/LayoutInflater;
    .end local v24    # "viewBaixar":Landroid/view/View;
    .end local v25    # "viewVisualizarPagamento":Landroid/view/View;
    .restart local v13    # "c":Lcom/controleFinanceiro/lancamento/Lancamento;
    .restart local v21    # "formato":Ljava/text/SimpleDateFormat;
    .restart local v23    # "vencimento_formatado":Ljava/lang/String;
    :cond_1
    const/16 v26, 0x4

    move-object v0, v12

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 332
    .end local v13    # "c":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v21    # "formato":Ljava/text/SimpleDateFormat;
    .end local v23    # "vencimento_formatado":Ljava/lang/String;
    .restart local v9    # "btCancelar":Landroid/widget/Button;
    .restart local v11    # "btSalvar":Landroid/widget/Button;
    .restart local v19    # "factoryBaixar":Landroid/view/LayoutInflater;
    .restart local v20    # "factoryVisualizarPagamento":Landroid/view/LayoutInflater;
    .restart local v24    # "viewBaixar":Landroid/view/View;
    .restart local v25    # "viewVisualizarPagamento":Landroid/view/View;
    :cond_2
    new-instance v26, Lcom/controleFinanceiro/lancamento/EditarLancamento$9;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento$9;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v26, Lcom/controleFinanceiro/lancamento/EditarLancamento$10;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento$10;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    new-instance v26, Lcom/controleFinanceiro/lancamento/EditarLancamento$11;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento$11;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;)V

    move-object v0, v12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 420
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 416
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mDataVencimentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoVencimento:I

    iget v4, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesVencimento:I

    iget v5, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaVencimento:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 418
    :pswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mDataPagamentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->anoPagamento:I

    iget v4, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->mesPagamento:I

    iget v5, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->diaPagamento:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 650
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 651
    const/4 v0, 0x3

    const v1, 0x7f050061

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 658
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 694
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 660
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 661
    .local v0, "factoryEmpresa":Landroid/view/LayoutInflater;
    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 663
    .local v1, "viewEmpresa":Landroid/view/View;
    new-instance v2, Lcom/controleFinanceiro/lancamento/EditarLancamento$12;

    invoke-direct {v2, p0, p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento$12;-><init>(Lcom/controleFinanceiro/lancamento/EditarLancamento;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaEmpresa:Landroid/app/AlertDialog;

    .line 687
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaEmpresa:Landroid/app/AlertDialog;

    const v3, 0x7f02000b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 688
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaEmpresa:Landroid/app/AlertDialog;

    const v3, 0x7f050061

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 689
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaEmpresa:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 690
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->janelaEmpresa:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setResult(I)V

    .line 474
    invoke-virtual {p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->finish()V

    .line 475
    return-void
.end method

.method public salvar()V
    .locals 20

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_DESCRICAO:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 480
    const v17, 0x7f050041

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 566
    :goto_0
    return-void

    .line 481
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    if-nez v17, :cond_1

    .line 482
    const v17, 0x7f050065

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 483
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CONTA:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    if-nez v17, :cond_2

    .line 484
    const v17, 0x7f050066

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 485
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    if-nez v17, :cond_3

    .line 486
    const v17, 0x7f050067

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 487
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_VALOR:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 488
    const v17, 0x7f050068

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 489
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->checkReplicar:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoQtdParcela:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 490
    const v17, 0x7f050059

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 494
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_VALOR:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "."

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    const-string v19, "."

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 496
    .local v14, "valor":F
    const/16 v17, 0x0

    cmpg-float v17, v14, v17

    if-gez v17, :cond_6

    .line 497
    const v17, 0x7f05005a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 561
    .end local v14    # "valor":F
    :catch_0
    move-exception v17

    move-object/from16 v9, v17

    .line 562
    .local v9, "e":Ljava/lang/NumberFormatException;
    const v17, 0x7f05005c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 498
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "valor":F
    :cond_6
    const/16 v17, 0x0

    cmpl-float v17, v14, v17

    if-nez v17, :cond_7

    .line 499
    const v17, 0x7f05005b

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 501
    :cond_7
    new-instance v10, Lcom/controleFinanceiro/lancamento/Lancamento;

    invoke-direct {v10}, Lcom/controleFinanceiro/lancamento/Lancamento;-><init>()V

    .line 502
    .local v10, "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object v2, v10

    iput-wide v0, v2, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    .line 507
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->checkReplicar:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoQtdParcela:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 509
    .local v13, "qtd_parcelas":I
    const/16 v16, 0x0

    .local v16, "x":I
    :goto_1
    move/from16 v0, v16

    move v1, v13

    if-lt v0, v1, :cond_9

    .line 555
    .end local v13    # "qtd_parcelas":I
    .end local v16    # "x":I
    :goto_2
    const/16 v17, -0x1

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setResult(ILandroid/content/Intent;)V

    .line 556
    const v17, 0x7f050042

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->finish()V

    goto/16 :goto_0

    .line 510
    .restart local v13    # "qtd_parcelas":I
    .restart local v16    # "x":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataVencimentoBD:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v5

    .line 511
    .local v5, "data":Ljava/sql/Date;
    const-string v6, ""

    .line 512
    .local v6, "data_vencimento":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 513
    .local v15, "vencimento":Ljava/util/Calendar;
    invoke-virtual {v15, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 514
    const/16 v17, 0x2

    move-object v0, v15

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 515
    const/16 v17, 0x5

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 516
    .local v7, "dia":I
    const/16 v17, 0x2

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v11, v17, 0x1

    .line 517
    .local v11, "mes":I
    const/16 v17, 0x1

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 518
    .local v3, "ano":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, "dia_formatado":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 520
    .local v12, "mes_formatado":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_DESCRICAO:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    .line 524
    invoke-static {v6}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_STATUS:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_VALOR:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "."

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    const-string v19, "."

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoCategoria:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "ano":I
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoConta:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CONTA:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_OBSERVACAO:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_OBSERVACAO:Ljava/lang/String;

    .line 532
    new-instance v4, Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;-><init>(Landroid/content/Context;)V

    .line 533
    .local v4, "categoriaDB":Lcom/controleFinanceiro/categoria/RepositorioCategoria;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->buscarTipoCategoria(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    .line 536
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->salvarLancamento(Lcom/controleFinanceiro/lancamento/Lancamento;)V

    .line 509
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 539
    .end local v4    # "categoriaDB":Lcom/controleFinanceiro/categoria/RepositorioCategoria;
    .end local v5    # "data":Ljava/sql/Date;
    .end local v6    # "data_vencimento":Ljava/lang/String;
    .end local v7    # "dia":I
    .end local v8    # "dia_formatado":Ljava/lang/String;
    .end local v11    # "mes":I
    .end local v12    # "mes_formatado":Ljava/lang/String;
    .end local v13    # "qtd_parcelas":I
    .end local v15    # "vencimento":Ljava/util/Calendar;
    .end local v16    # "x":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_DESCRICAO:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataVencimentoBD:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_STATUS:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_VALOR:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "."

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    const-string v19, "."

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoCategoria:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoConta:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CONTA:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_OBSERVACAO:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_OBSERVACAO:Ljava/lang/String;

    .line 548
    new-instance v4, Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;-><init>(Landroid/content/Context;)V

    .line 549
    .restart local v4    # "categoriaDB":Lcom/controleFinanceiro/categoria/RepositorioCategoria;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->buscarTipoCategoria(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    .line 552
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->salvarLancamento(Lcom/controleFinanceiro/lancamento/Lancamento;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public salvarBaixa()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, ","

    const-string v8, ""

    const-string v6, "."

    .line 570
    const/4 v3, 0x0

    .line 571
    .local v3, "erro":I
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_DESCONTO:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 572
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_DESCONTO:Landroid/widget/EditText;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_0
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_MULTA:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 575
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_MULTA:Landroid/widget/EditText;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 579
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_DESCONTO:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    const-string v8, "."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 580
    .local v1, "desconto":F
    const/4 v3, 0x1

    .line 581
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_MULTA:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    const-string v8, "."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 582
    .local v5, "multa":F
    const/4 v3, 0x3

    .line 584
    cmpg-float v6, v1, v10

    if-gez v6, :cond_2

    .line 585
    const v6, 0x7f05005d

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 586
    const/4 v3, 0x2

    .line 588
    :cond_2
    cmpg-float v6, v5, v10

    if-gez v6, :cond_3

    .line 589
    const v6, 0x7f05005e

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 590
    const/4 v3, 0x2

    .line 593
    :cond_3
    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    .line 595
    new-instance v4, Lcom/controleFinanceiro/lancamento/Lancamento;

    invoke-direct {v4}, Lcom/controleFinanceiro/lancamento/Lancamento;-><init>()V

    .line 596
    .local v4, "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    if-eqz v6, :cond_4

    .line 598
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    .line 600
    :cond_4
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_DESCRICAO:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    .line 601
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataVencimentoBD:Ljava/lang/String;

    invoke-static {v6}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v6

    iput-object v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    .line 602
    const/4 v6, 0x1

    iput v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    .line 603
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_RE_VALOR:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    const-string v8, "."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    .line 604
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoCategoria:Ljava/util/List;

    iget-object v7, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    .line 605
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    iget-object v7, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    .line 606
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoConta:Ljava/util/List;

    iget-object v7, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CONTA:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    .line 607
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_ST_OBSERVACAO:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_OBSERVACAO:Ljava/lang/String;

    .line 610
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_DESCONTO:Ljava/lang/Number;

    .line 611
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_MULTA:Ljava/lang/Number;

    .line 612
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->dataPagamentoBD:Ljava/lang/String;

    invoke-static {v6}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v6

    iput-object v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    .line 614
    new-instance v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;-><init>(Landroid/content/Context;)V

    .line 615
    .local v0, "categoriaDB":Lcom/controleFinanceiro/categoria/RepositorioCategoria;
    iget-object v6, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->buscarTipoCategoria(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    .line 618
    invoke-virtual {p0, v4}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->salvarLancamento(Lcom/controleFinanceiro/lancamento/Lancamento;)V

    .line 621
    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v6, v7}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setResult(ILandroid/content/Intent;)V

    .line 624
    invoke-virtual {p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->finish()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v0    # "categoriaDB":Lcom/controleFinanceiro/categoria/RepositorioCategoria;
    .end local v1    # "desconto":F
    .end local v4    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v5    # "multa":F
    :cond_5
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 627
    .local v2, "e":Ljava/lang/NumberFormatException;
    if-nez v3, :cond_6

    .line 628
    const v6, 0x7f05005f

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 630
    :cond_6
    if-ne v3, v9, :cond_5

    .line 631
    const v6, 0x7f050060

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public salvarEmpresa()V
    .locals 6

    .prologue
    const v5, 0x1090008

    .line 704
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoEMP_ST_NOME:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    const v3, 0x7f050053

    invoke-virtual {p0, v3}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 732
    :goto_0
    return-void

    .line 707
    :cond_0
    new-instance v1, Lcom/controleFinanceiro/empresa/Empresa;

    invoke-direct {v1}, Lcom/controleFinanceiro/empresa/Empresa;-><init>()V

    .line 708
    .local v1, "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    const/4 v3, 0x0

    iput v3, v1, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    .line 709
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoEMP_ST_NOME:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    .line 710
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    .line 713
    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->salvarEmpresa(Lcom/controleFinanceiro/empresa/Empresa;)V

    .line 715
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->codigoEmpresa:Ljava/util/List;

    .line 716
    new-instance v2, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;-><init>(Landroid/content/Context;)V

    .line 717
    .local v2, "empresaDB":Lcom/controleFinanceiro/empresa/RepositorioEmpresa;
    invoke-virtual {v2}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->carregaComboEmpresa()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaEmpresa:Ljava/util/List;

    .line 718
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->listaEmpresa:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->fillListaEmpresa(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboEmpresa:Ljava/util/List;

    .line 720
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->comboEmpresa:Ljava/util/List;

    invoke-direct {v0, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 721
    .local v0, "adaptadorEmpresa":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 722
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/EditarLancamento;->campoLAN_IN_EMPRESA:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 725
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->setResult(ILandroid/content/Intent;)V

    .line 729
    invoke-virtual {p0}, Lcom/controleFinanceiro/lancamento/EditarLancamento;->fecharJanelaEmpresa()V

    goto :goto_0
.end method

.method protected salvarEmpresa(Lcom/controleFinanceiro/empresa/Empresa;)V
    .locals 1
    .param p1, "empresa"    # Lcom/controleFinanceiro/empresa/Empresa;

    .prologue
    .line 735
    sget-object v0, Lcom/controleFinanceiro/empresa/CadastroEmpresa;->repositorio:Lcom/controleFinanceiro/empresa/RepositorioEmpresa;

    invoke-static {p1}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->salvar(Lcom/controleFinanceiro/empresa/Empresa;)J

    .line 736
    return-void
.end method

.method protected salvarLancamento(Lcom/controleFinanceiro/lancamento/Lancamento;)V
    .locals 1
    .param p1, "lancamento"    # Lcom/controleFinanceiro/lancamento/Lancamento;

    .prologue
    .line 746
    sget-object v0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v0, p1}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->salvar(Lcom/controleFinanceiro/lancamento/Lancamento;)J

    .line 747
    return-void
.end method
