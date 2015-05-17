.class public Lcom/controleFinanceiro/lancamento/ResumoCategoria;
.super Landroid/app/Activity;
.source "ResumoCategoria.java"


# static fields
.field protected static final DIALOG_INTERVALO_FINAL:I = 0x1

.field protected static final DIALOG_INTERVALO_INICIAL:I

.field public static repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;


# instance fields
.field private anoIntervaloFinal:I

.field private anoIntervaloInicial:I

.field private btnBuscarCategoria:Landroid/widget/Button;

.field private btnResumoCategoriaIntervaloFinal:Landroid/widget/Button;

.field private btnResumoCategoriaIntervaloInicial:Landroid/widget/Button;

.field private campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

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

.field private dataIntervaloFinalBD:Ljava/lang/String;

.field private dataIntervaloInicialBD:Ljava/lang/String;

.field private diaIntervaloFinal:I

.field private diaIntervaloInicial:I

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

.field private mDataIntervaloFinalSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDataIntervaloInicialSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mesIntervaloFinal:I

.field private mesIntervaloInicial:I

.field private onClickBuscarCategoria:Landroid/view/View$OnClickListener;

.field private onClickIntervaloFinal:Landroid/view/View$OnClickListener;

.field private onClickIntervaloInicial:Landroid/view/View$OnClickListener;

.field private txtTotalCategoria:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->codigoCategoria:Ljava/util/List;

    .line 105
    new-instance v0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria$1;-><init>(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->onClickBuscarCategoria:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$2;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria$2;-><init>(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->onClickIntervaloInicial:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$3;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria$3;-><init>(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->onClickIntervaloFinal:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$4;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria$4;-><init>(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mDataIntervaloInicialSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 177
    new-instance v0, Lcom/controleFinanceiro/lancamento/ResumoCategoria$5;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria$5;-><init>(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mDataIntervaloFinalSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->codigoCategoria:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$10(Lcom/controleFinanceiro/lancamento/ResumoCategoria;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloFinal:I

    return-void
.end method

.method static synthetic access$11(Lcom/controleFinanceiro/lancamento/ResumoCategoria;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloFinal:I

    return-void
.end method

.method static synthetic access$12(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->atualizarIntervaloFinal()V

    return-void
.end method

.method static synthetic access$2(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->dataIntervaloInicialBD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->dataIntervaloFinalBD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->txtTotalCategoria:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/controleFinanceiro/lancamento/ResumoCategoria;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloInicial:I

    return-void
.end method

.method static synthetic access$6(Lcom/controleFinanceiro/lancamento/ResumoCategoria;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloInicial:I

    return-void
.end method

.method static synthetic access$7(Lcom/controleFinanceiro/lancamento/ResumoCategoria;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloInicial:I

    return-void
.end method

.method static synthetic access$8(Lcom/controleFinanceiro/lancamento/ResumoCategoria;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->atualizarIntervaloInicial()V

    return-void
.end method

.method static synthetic access$9(Lcom/controleFinanceiro/lancamento/ResumoCategoria;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloFinal:I

    return-void
.end method

.method private atualizarIntervaloFinal()V
    .locals 5

    .prologue
    const-string v4, "/"

    const-string v3, "-"

    .line 167
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnResumoCategoriaIntervaloFinal:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    iget v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloFinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    iget v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloFinal:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    iget v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloFinal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloFinal:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloFinal:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->verificaDigitos(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloFinal:I

    invoke-direct {p0, v1}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->verificaDigitos(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->dataIntervaloFinalBD:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private atualizarIntervaloInicial()V
    .locals 5

    .prologue
    const-string v4, "/"

    const-string v3, "-"

    .line 146
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnResumoCategoriaIntervaloInicial:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    iget v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloInicial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    iget v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloInicial:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloInicial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloInicial:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloInicial:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->verificaDigitos(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloInicial:I

    invoke-direct {p0, v1}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->verificaDigitos(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->dataIntervaloInicialBD:Ljava/lang/String;

    .line 152
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

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 207
    return-object v1

    .line 199
    :cond_0
    if-nez v0, :cond_1

    .line 200
    const v2, 0x7f050062

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->codigoCategoria:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_1
    sub-int v2, v0, v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/controleFinanceiro/categoria/Categoria;

    iget-object v2, v2, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->codigoCategoria:Ljava/util/List;

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

.method private initUI()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloFinal:I

    .line 88
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloFinal:I

    .line 89
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloFinal:I

    .line 92
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->atualizarIntervaloFinal()V

    .line 94
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 96
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloInicial:I

    .line 97
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloInicial:I

    .line 98
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloInicial:I

    .line 101
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->atualizarIntervaloInicial()V

    .line 103
    return-void
.end method

.method private verificaDigitos(I)Ljava/lang/String;
    .locals 3
    .param p1, "numero"    # I

    .prologue
    .line 188
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "retorno":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->setContentView(I)V

    .line 57
    new-instance v2, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;

    invoke-direct {v2, p0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamentoScript;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->repositorio:Lcom/controleFinanceiro/lancamento/RepositorioLancamento;

    .line 59
    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    .line 61
    new-instance v1, Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    invoke-direct {v1, p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, "categoriaDB":Lcom/controleFinanceiro/categoria/RepositorioCategoria;
    invoke-virtual {v1}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->carregaComboCategoria()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->listaCategoria:Ljava/util/List;

    .line 63
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->listaCategoria:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->fillListaCategoria(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->comboCategoria:Ljava/util/List;

    .line 65
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->comboCategoria:Ljava/util/List;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 66
    .local v0, "adaptadorCategoria":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 67
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->campoLAN_IN_CATEGORIA:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 69
    const v2, 0x7f060042

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->txtTotalCategoria:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f060040

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnBuscarCategoria:Landroid/widget/Button;

    .line 72
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnBuscarCategoria:Landroid/widget/Button;

    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->onClickBuscarCategoria:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v2, 0x7f06003e

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnResumoCategoriaIntervaloInicial:Landroid/widget/Button;

    .line 75
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnResumoCategoriaIntervaloInicial:Landroid/widget/Button;

    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->onClickIntervaloInicial:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnResumoCategoriaIntervaloFinal:Landroid/widget/Button;

    .line 78
    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->btnResumoCategoriaIntervaloFinal:Landroid/widget/Button;

    iget-object v3, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->onClickIntervaloFinal:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->initUI()V

    .line 81
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 136
    packed-switch p1, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mDataIntervaloInicialSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloInicial:I

    iget v4, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloInicial:I

    iget v5, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloInicial:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 140
    :pswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mDataIntervaloFinalSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->anoIntervaloFinal:I

    iget v4, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->mesIntervaloFinal:I

    iget v5, p0, Lcom/controleFinanceiro/lancamento/ResumoCategoria;->diaIntervaloFinal:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
