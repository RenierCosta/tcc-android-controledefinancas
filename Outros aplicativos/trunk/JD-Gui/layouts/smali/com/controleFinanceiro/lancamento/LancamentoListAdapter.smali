.class public Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LancamentoListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private lista:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/lancamento/Lancamento;",
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
            "Lcom/controleFinanceiro/lancamento/Lancamento;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/lancamento/Lancamento;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;->lista:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 39
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;->lista:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/controleFinanceiro/lancamento/Lancamento;

    .line 48
    .local v3, "c":Lcom/controleFinanceiro/lancamento/Lancamento;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/LancamentoListAdapter;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 49
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v18, 0x7f030012

    const/16 v19, 0x0

    move-object v0, v11

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 53
    .local v17, "view":Landroid/view/View;
    const v18, 0x7f06006f

    :try_start_0
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 54
    .local v7, "descricao":Landroid/widget/TextView;
    move-object v0, v3

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v18, 0x7f060070

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 57
    .local v6, "data_vencimento":Landroid/widget/TextView;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v18, "dd/MM/yyyy"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    .local v9, "formato":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy-MM-dd"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v10, "formato2":Ljava/text/SimpleDateFormat;
    move-object v0, v3

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 60
    .local v4, "data":Ljava/util/Date;
    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "data_hoje":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v18, 0x7f060071

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 64
    .local v16, "valor":Landroid/widget/TextView;
    new-instance v12, Ljava/util/Locale;

    const-string v18, "pt"

    const-string v19, "BR"

    move-object v0, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v12, "local":Ljava/util/Locale;
    invoke-static {v12}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v13

    .line 66
    .local v13, "nf":Ljava/text/NumberFormat;
    const/16 v18, 0x2

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 67
    move-object v0, v3

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    move-object/from16 v18, v0

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v18, 0x7f060072

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 70
    .local v14, "status":Landroid/widget/ImageView;
    move-object v0, v3

    iget v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    move/from16 v18, v0

    move-object v0, v14

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    const v18, 0x7f060073

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 73
    .local v15, "tipo":Landroid/widget/TextView;
    move-object v0, v3

    iget v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 74
    const-string v18, "Receita"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .end local v4    # "data":Ljava/util/Date;
    .end local v5    # "data_hoje":Ljava/lang/String;
    .end local v6    # "data_vencimento":Landroid/widget/TextView;
    .end local v7    # "descricao":Landroid/widget/TextView;
    .end local v9    # "formato":Ljava/text/SimpleDateFormat;
    .end local v10    # "formato2":Ljava/text/SimpleDateFormat;
    .end local v12    # "local":Ljava/util/Locale;
    .end local v13    # "nf":Ljava/text/NumberFormat;
    .end local v14    # "status":Landroid/widget/ImageView;
    .end local v15    # "tipo":Landroid/widget/TextView;
    .end local v16    # "valor":Landroid/widget/TextView;
    :goto_0
    return-object v17

    .line 76
    .restart local v4    # "data":Ljava/util/Date;
    .restart local v5    # "data_hoje":Ljava/lang/String;
    .restart local v6    # "data_vencimento":Landroid/widget/TextView;
    .restart local v7    # "descricao":Landroid/widget/TextView;
    .restart local v9    # "formato":Ljava/text/SimpleDateFormat;
    .restart local v10    # "formato2":Ljava/text/SimpleDateFormat;
    .restart local v12    # "local":Ljava/util/Locale;
    .restart local v13    # "nf":Ljava/text/NumberFormat;
    .restart local v14    # "status":Landroid/widget/ImageView;
    .restart local v15    # "tipo":Landroid/widget/TextView;
    .restart local v16    # "valor":Landroid/widget/TextView;
    :cond_0
    const-string v18, "Despesa"

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v4    # "data":Ljava/util/Date;
    .end local v5    # "data_hoje":Ljava/lang/String;
    .end local v6    # "data_vencimento":Landroid/widget/TextView;
    .end local v7    # "descricao":Landroid/widget/TextView;
    .end local v9    # "formato":Ljava/text/SimpleDateFormat;
    .end local v10    # "formato2":Ljava/text/SimpleDateFormat;
    .end local v12    # "local":Ljava/util/Locale;
    .end local v13    # "nf":Ljava/text/NumberFormat;
    .end local v14    # "status":Landroid/widget/ImageView;
    .end local v15    # "tipo":Landroid/widget/TextView;
    .end local v16    # "valor":Landroid/widget/TextView;
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    .line 80
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method
