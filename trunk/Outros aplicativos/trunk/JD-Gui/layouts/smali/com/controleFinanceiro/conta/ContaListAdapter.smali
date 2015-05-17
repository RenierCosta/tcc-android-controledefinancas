.class public Lcom/controleFinanceiro/conta/ContaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContaListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private lista:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/conta/Conta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/conta/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/conta/Conta;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/controleFinanceiro/conta/ContaListAdapter;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/controleFinanceiro/conta/ContaListAdapter;->lista:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/controleFinanceiro/conta/ContaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/controleFinanceiro/conta/ContaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 34
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 38
    iget-object v9, p0, Lcom/controleFinanceiro/conta/ContaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/controleFinanceiro/conta/Conta;

    .line 40
    .local v1, "c":Lcom/controleFinanceiro/conta/Conta;
    iget-object v9, p0, Lcom/controleFinanceiro/conta/ContaListAdapter;->context:Landroid/content/Context;

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 41
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f030002

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 45
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f060007

    :try_start_0
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "banco":Landroid/widget/TextView;
    iget-object v9, v1, Lcom/controleFinanceiro/conta/Conta;->CON_ST_BANCO:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v9, 0x7f060008

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 49
    .local v5, "nconta":Landroid/widget/TextView;
    iget-object v9, v1, Lcom/controleFinanceiro/conta/Conta;->CON_CH_NCONTA:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v9, 0x7f060009

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 52
    .local v7, "valorAtual":Landroid/widget/TextView;
    new-instance v4, Ljava/util/Locale;

    const-string v9, "pt"

    const-string v10, "BR"

    invoke-direct {v4, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v4, "local":Ljava/util/Locale;
    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    .line 54
    .local v6, "nf":Ljava/text/NumberFormat;
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 56
    iget-object v9, v1, Lcom/controleFinanceiro/conta/Conta;->CON_RE_VALORATUAL:Ljava/lang/Number;

    invoke-virtual {v6, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "banco":Landroid/widget/TextView;
    .end local v4    # "local":Ljava/util/Locale;
    .end local v5    # "nconta":Landroid/widget/TextView;
    .end local v6    # "nf":Ljava/text/NumberFormat;
    .end local v7    # "valorAtual":Landroid/widget/TextView;
    :goto_0
    return-object v8

    .line 58
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method
