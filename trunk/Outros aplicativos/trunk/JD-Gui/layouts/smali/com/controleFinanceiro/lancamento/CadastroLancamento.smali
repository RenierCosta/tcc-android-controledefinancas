.class public Lcom/controleFinanceiro/lancamento/CadastroLancamento;
.super Landroid/app/ListActivity;
.source "CadastroLancamento.java"


# static fields
.field protected static final BUSCAR:I = 0x6

.field protected static final CONFIGURACAO:I = 0x5

.field protected static final DIALOG_VENCIMENTO:I = 0x0

.field protected static final DIALOG_VENCIMENTO1:I = 0x1

.field protected static final INSERIR_EDITAR:I = 0x1

.field protected static final LISTAR_PENDENTES:I = 0x3

.field protected static final LISTAR_TODOS:I = 0x4

.field protected static final RESUMO:I = 0x2

.field protected static final SOBRE:I = 0x7

.field public static repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;


# instance fields
.field private anoVencimento:I

.field private anoVencimento1:I

.field campoBuscarVencimento:Landroid/widget/Button;

.field campoBuscarVencimento1:Landroid/widget/Button;

.field private dataVencimentoBD:Ljava/lang/String;

.field private dataVencimentoBD1:Ljava/lang/String;

.field private diaVencimento:I

.field private diaVencimento1:I

.field private janelaBuscar:Landroid/app/AlertDialog;

.field janelaSobre:Landroid/app/AlertDialog;

.field private lancamentos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/lancamento/Lancamento;",
            ">;"
        }
    .end annotation
.end field

.field private mDataVencimentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDataVencimentoSetListener1:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mesVencimento:I

.field private mesVencimento1:I

.field tipo_lista:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 42
    const-string v0, "p"

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->tipo_lista:Ljava/lang/String;

    .line 182
    new-instance v0, Lcom/controleFinanceiro/lancamento/CadastroLancamento$1;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento$1;-><init>(Lcom/controleFinanceiro/lancamento/CadastroLancamento;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mDataVencimentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 194
    new-instance v0, Lcom/controleFinanceiro/lancamento/CadastroLancamento$2;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento$2;-><init>(Lcom/controleFinanceiro/lancamento/CadastroLancamento;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mDataVencimentoSetListener1:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/lancamento/CadastroLancamento;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento:I

    return-void
.end method

.method static synthetic access$1(Lcom/controleFinanceiro/lancamento/CadastroLancamento;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento:I

    return-void
.end method

.method static synthetic access$2(Lcom/controleFinanceiro/lancamento/CadastroLancamento;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento:I

    return-void
.end method

.method static synthetic access$3(Lcom/controleFinanceiro/lancamento/CadastroLancamento;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->atualizarVencimento()V

    return-void
.end method

.method static synthetic access$4(Lcom/controleFinanceiro/lancamento/CadastroLancamento;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento1:I

    return-void
.end method

.method static synthetic access$5(Lcom/controleFinanceiro/lancamento/CadastroLancamento;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento1:I

    return-void
.end method

.method static synthetic access$6(Lcom/controleFinanceiro/lancamento/CadastroLancamento;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento1:I

    return-void
.end method

.method static synthetic access$7(Lcom/controleFinanceiro/lancamento/CadastroLancamento;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->atualizarVencimento1()V

    return-void
.end method

.method private atualizarVencimento()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const-string v5, "/"

    const-string v4, "-"

    .line 143
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->campoBuscarVencimento:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    iget v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    iget v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    iget v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->preencheZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->preencheZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->dataVencimentoBD:Ljava/lang/String;

    .line 150
    return-void
.end method

.method private atualizarVencimento1()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const-string v5, "/"

    const-string v4, "-"

    .line 154
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->campoBuscarVencimento1:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    iget v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    iget v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento1:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    iget v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento1:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->preencheZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->preencheZeros(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->dataVencimentoBD1:Ljava/lang/String;

    .line 161
    return-void
.end method

.method private preencheZeros(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "campo"    # Ljava/lang/String;
    .param p2, "tamanho"    # I

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 168
    .local v0, "contador":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 173
    if-lt v0, p2, :cond_0

    .line 175
    :cond_1
    return-object p1
.end method


# virtual methods
.method protected atualizarLista(Ljava/lang/String;)V
    .locals 6
    .param p1, "tipo"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 212
    .local v0, "data_hoje":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "formato":Ljava/text/SimpleDateFormat;
    const-string v2, "p"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    sget-object v2, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->listaLancamentosPendentes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->lancamentos:Ljava/util/List;

    .line 223
    :cond_0
    :goto_0
    new-instance v2, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;

    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->lancamentos:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    return-void

    .line 216
    :cond_1
    const-string v2, "t"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    sget-object v2, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->listarTodosLancamentos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->lancamentos:Ljava/util/List;

    goto :goto_0

    .line 218
    :cond_2
    const-string v2, "b"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    sget-object v2, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->dataVencimentoBD:Ljava/lang/String;

    iget-object v4, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->dataVencimentoBD1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->listaLancamentoPorVencimento(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->lancamentos:Ljava/util/List;

    goto :goto_0
.end method

.method protected editarLancamento(I)V
    .locals 5
    .param p1, "posicao"    # I

    .prologue
    .line 327
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->lancamentos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/controleFinanceiro/lancamento/Lancamento;

    .line 329
    .local v1, "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/controleFinanceiro/lancamento/EditarLancamento;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "_id"

    iget-wide v3, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 333
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    return-void
.end method

.method public fecharJanelaBuscar()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaBuscar:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 206
    return-void
.end method

.method public fecharJanelaSobre()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 315
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "codigo"    # I
    .param p2, "codigoRetorno"    # I
    .param p3, "it"    # Landroid/content/Intent;

    .prologue
    .line 338
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 341
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->tipo_lista:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->atualizarLista(Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v2, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    .line 66
    const-string v2, "p"

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->atualizarLista(Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, "factoryBuscar":Landroid/view/LayoutInflater;
    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "viewBaixar":Landroid/view/View;
    new-instance v2, Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;

    invoke-direct {v2, p0, p0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento$3;-><init>(Lcom/controleFinanceiro/lancamento/CadastroLancamento;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaBuscar:Landroid/app/AlertDialog;

    .line 125
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaBuscar:Landroid/app/AlertDialog;

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 126
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaBuscar:Landroid/app/AlertDialog;

    const v3, 0x7f050054

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 127
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaBuscar:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 129
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 138
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 134
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mDataVencimentoSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento:I

    iget v4, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento:I

    iget v5, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 136
    :pswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mDataVencimentoSetListener1:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->anoVencimento1:I

    iget v4, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->mesVencimento1:I

    iget v5, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->diaVencimento1:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 231
    const v1, 0x7f05003c

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 232
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020011

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 234
    const/4 v1, 0x4

    const v2, 0x7f050055

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 235
    const v1, 0x7f02001b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 237
    const/4 v1, 0x3

    const v2, 0x7f050056

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 238
    const v1, 0x7f020017

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 240
    const/4 v1, 0x2

    const v2, 0x7f050057

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 241
    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 243
    const/4 v1, 0x6

    const v2, 0x7f05002c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 244
    const v1, 0x7f020004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 246
    const/4 v1, 0x5

    const v2, 0x7f05000b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 247
    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 249
    const/4 v1, 0x7

    const v2, 0x7f05003d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 250
    const v1, 0x7f02001a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 260
    return v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 352
    sget-object v0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    invoke-virtual {v0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->fechar()V

    .line 353
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "posicao"    # I
    .param p4, "id"    # J

    .prologue
    .line 320
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 321
    invoke-virtual {p0, p3}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->editarLancamento(I)V

    .line 322
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 266
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 310
    :goto_0
    return v4

    .line 269
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/lancamento/EditarLancamento;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 272
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/lancamento/ResumoLancamento;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 275
    :pswitch_2
    const-string v2, "p"

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->tipo_lista:Ljava/lang/String;

    .line 276
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->tipo_lista:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->atualizarLista(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :pswitch_3
    const-string v2, "t"

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->tipo_lista:Ljava/lang/String;

    .line 280
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->tipo_lista:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->atualizarLista(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/configuracao/Configuracao;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 286
    :pswitch_5
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaBuscar:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 289
    :pswitch_6
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 290
    .local v0, "factorySobre":Landroid/view/LayoutInflater;
    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, "viewSobre":Landroid/view/View;
    new-instance v2, Lcom/controleFinanceiro/lancamento/CadastroLancamento$4;

    invoke-direct {v2, p0, p0}, Lcom/controleFinanceiro/lancamento/CadastroLancamento$4;-><init>(Lcom/controleFinanceiro/lancamento/CadastroLancamento;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaSobre:Landroid/app/AlertDialog;

    .line 305
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaSobre:Landroid/app/AlertDialog;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 306
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaSobre:Landroid/app/AlertDialog;

    const v3, 0x7f05004e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 307
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 308
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/CadastroLancamento;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
