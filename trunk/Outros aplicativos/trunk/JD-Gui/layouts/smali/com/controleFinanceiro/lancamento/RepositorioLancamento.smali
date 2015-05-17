.class public Lcom/controleFinanceiro/lancamento/RepositorioLancamento;
.super Ljava/lang/Object;
.source "RepositorioLancamento.java"


# static fields
.field private static final LANCAMENTO:Ljava/lang/String; = "lancamento"

.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field public static final NOME_TABELA:Ljava/lang/String; = "FIN_LANCAMENTO"

.field protected static db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "controle_financeiro"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method

.method public static calculaTotalConta(IF)F
    .locals 11
    .param p0, "conta"    # I
    .param p1, "valor_inicial"    # F

    .prologue
    .line 478
    const/4 v8, 0x0

    .line 479
    .local v8, "total_despesas":F
    const/4 v9, 0x0

    .line 481
    .local v9, "total_receitas":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_LANCAMENTO"

    sget-object v2, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LAN_IN_CONTA = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "conta":I
    const-string v3, " AND "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "LAN_IN_STATUS"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " = 1"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 482
    .local p0, "c":Landroid/database/Cursor;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    const-string v0, "LAN_RE_VALOR"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 484
    .local v3, "idxLAN_RE_VALOR":I
    const-string v0, "LAN_IN_TIPO"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 485
    .local v0, "idxLAN_IN_TIPO":I
    const-string v1, "LAN_RE_DESCONTO"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, "idxLAN_RE_DESCONTO":I
    const-string v2, "LAN_RE_MULTA"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "idxLAN_RE_MULTA":I
    move v5, v9

    .end local v9    # "total_receitas":F
    .local v5, "total_receitas":F
    move v4, v8

    .line 488
    .end local v8    # "total_despesas":F
    .local v4, "total_despesas":F
    :cond_0
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 489
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 493
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 487
    if-nez v6, :cond_0

    move v1, v5

    .end local v5    # "total_receitas":F
    .local v1, "total_receitas":F
    move v0, v4

    .line 495
    .end local v2    # "idxLAN_RE_MULTA":I
    .end local v3    # "idxLAN_RE_VALOR":I
    .end local v4    # "total_despesas":F
    .local v0, "total_despesas":F
    :goto_1
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 500
    sub-float p0, v1, v0

    add-float/2addr p0, p1

    move p1, v1

    .end local v1    # "total_receitas":F
    .local p1, "total_receitas":F
    move v10, v0

    .end local v0    # "total_despesas":F
    .local v10, "total_despesas":F
    move v0, p0

    move p0, v10

    .end local v10    # "total_despesas":F
    .local p0, "total_despesas":F
    :goto_2
    return v0

    .line 491
    .local v0, "idxLAN_IN_TIPO":I
    .local v1, "idxLAN_RE_DESCONTO":I
    .restart local v2    # "idxLAN_RE_MULTA":I
    .restart local v3    # "idxLAN_RE_VALOR":I
    .restart local v4    # "total_despesas":F
    .restart local v5    # "total_receitas":F
    .local p0, "c":Landroid/database/Cursor;
    .local p1, "valor_inicial":F
    :cond_1
    :try_start_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getFloat(I)F
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    add-float/2addr v6, v7

    add-float/2addr v4, v6

    goto :goto_0

    .line 496
    .end local v0    # "idxLAN_IN_TIPO":I
    .end local v1    # "idxLAN_RE_DESCONTO":I
    .end local v2    # "idxLAN_RE_MULTA":I
    .end local v3    # "idxLAN_RE_VALOR":I
    .end local v4    # "total_despesas":F
    .end local v5    # "total_receitas":F
    .end local p0    # "c":Landroid/database/Cursor;
    .restart local v8    # "total_despesas":F
    .restart local v9    # "total_receitas":F
    :catch_0
    move-exception p0

    move v0, v9

    .end local v9    # "total_receitas":F
    .local v0, "total_receitas":F
    move p1, v8

    .line 497
    .end local v8    # "total_despesas":F
    .local p0, "e":Landroid/database/SQLException;
    .local p1, "total_despesas":F
    :goto_3
    const-string v1, "lancamento"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "e":Landroid/database/SQLException;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 p0, 0x0

    move v10, v0

    .end local v0    # "total_receitas":F
    .local v10, "total_receitas":F
    move v0, p0

    move p0, p1

    .end local p1    # "total_despesas":F
    .local p0, "total_despesas":F
    move p1, v10

    .end local v10    # "total_receitas":F
    .local p1, "total_receitas":F
    goto :goto_2

    .line 496
    .local v0, "idxLAN_IN_TIPO":I
    .restart local v1    # "idxLAN_RE_DESCONTO":I
    .restart local v2    # "idxLAN_RE_MULTA":I
    .restart local v3    # "idxLAN_RE_VALOR":I
    .restart local v4    # "total_despesas":F
    .restart local v5    # "total_receitas":F
    .local p0, "c":Landroid/database/Cursor;
    .local p1, "valor_inicial":F
    :catch_1
    move-exception p0

    move v0, v5

    .end local v5    # "total_receitas":F
    .local v0, "total_receitas":F
    move p1, v4

    .end local v4    # "total_despesas":F
    .local p1, "total_despesas":F
    goto :goto_3

    .end local v2    # "idxLAN_RE_MULTA":I
    .end local v3    # "idxLAN_RE_VALOR":I
    .local v0, "total_despesas":F
    .local v1, "total_receitas":F
    .local p1, "valor_inicial":F
    :catch_2
    move-exception p0

    move p1, v0

    .end local v0    # "total_despesas":F
    .local p1, "total_despesas":F
    move v0, v1

    .end local v1    # "total_receitas":F
    .local v0, "total_receitas":F
    goto :goto_3

    .end local v0    # "total_receitas":F
    .restart local v8    # "total_despesas":F
    .restart local v9    # "total_receitas":F
    .local p1, "valor_inicial":F
    :cond_2
    move v1, v9

    .end local v9    # "total_receitas":F
    .restart local v1    # "total_receitas":F
    move v0, v8

    .end local v8    # "total_despesas":F
    .local v0, "total_despesas":F
    goto :goto_1
.end method


# virtual methods
.method public atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "valores"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 113
    sget-object v1, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_LANCAMENTO"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "count":I
    const-string v1, "lancamento"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Atualizou ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] registros"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v0
.end method

.method public atualizar(Lcom/controleFinanceiro/lancamento/Lancamento;)I
    .locals 7
    .param p1, "lancamento"    # Lcom/controleFinanceiro/lancamento/Lancamento;

    .prologue
    .line 86
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "LAN_ST_DESCRICAO"

    iget-object v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v5, "LAN_DT_VENCIMENTO"

    iget-object v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v5, "LAN_IN_STATUS"

    iget v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v5, "LAN_RE_VALOR"

    iget-object v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "LAN_IN_CATEGORIA"

    iget v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v5, "LAN_IN_EMPRESA"

    iget v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v5, "LAN_IN_CONTA"

    iget v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v5, "LAN_IN_TIPO"

    iget v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v5, "LAN_ST_OBSERVACAO"

    iget-object v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_OBSERVACAO:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v5, "LAN_RE_DESCONTO"

    iget-object v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_DESCONTO:Ljava/lang/Number;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v5, "LAN_RE_MULTA"

    iget-object v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_MULTA:Ljava/lang/Number;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v5, "LAN_DT_PAGAMENTO"

    iget-object v6, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-wide v5, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "_id":Ljava/lang/String;
    const-string v3, "_id=?"

    .line 103
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 105
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, "count":I
    return v1
.end method

.method public buscarLancamento(J)Lcom/controleFinanceiro/lancamento/Lancamento;
    .locals 19
    .param p1, "id"    # J

    .prologue
    .line 140
    sget-object v3, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    const-string v5, "FIN_LANCAMENTO"

    sget-object v6, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 142
    .local v14, "c":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 145
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    new-instance v17, Lcom/controleFinanceiro/lancamento/Lancamento;

    invoke-direct/range {v17 .. v17}, Lcom/controleFinanceiro/lancamento/Lancamento;-><init>()V

    .line 150
    .local v17, "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    .line 151
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    .line 152
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    .line 153
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    .line 154
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    .line 155
    const/4 v3, 0x5

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    .line 156
    const/4 v3, 0x6

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    .line 157
    const/4 v3, 0x7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    .line 158
    const/16 v3, 0x8

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    .line 159
    const/16 v3, 0x9

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_OBSERVACAO:Ljava/lang/String;

    .line 160
    const/16 v3, 0xa

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_DESCONTO:Ljava/lang/Number;

    .line 161
    const/16 v3, 0xb

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_MULTA:Ljava/lang/Number;

    .line 162
    const/16 v3, 0xc

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 164
    .local v15, "cal2":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 165
    .local v13, "anoPagamento":I
    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 166
    .local v18, "mesPagamento":I
    const/4 v3, 0x5

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 167
    .local v16, "diaPagamento":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    .end local v13    # "anoPagamento":I
    .end local v15    # "cal2":Ljava/util/Calendar;
    .end local v16    # "diaPagamento":I
    .end local v18    # "mesPagamento":I
    :goto_0
    move-object/from16 v3, v17

    .line 175
    .end local v17    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    :goto_1
    return-object v3

    .line 169
    .restart local v17    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    :cond_0
    const/16 v3, 0xc

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    goto :goto_0

    .line 174
    .end local v17    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 175
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public calculaSaldoAtualContas()F
    .locals 17

    .prologue
    .line 505
    const/4 v14, 0x0

    .line 506
    .local v14, "total_despesas":F
    const/16 v16, 0x0

    .line 507
    .local v16, "total_receitas":F
    invoke-virtual/range {p0 .. p0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->calculaSaldoInicialContas()F

    move-result v15

    .line 509
    .local v15, "total_inicial":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_LANCAMENTO"

    sget-object v2, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    const-string v3, "LAN_IN_STATUS = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 510
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    const-string v0, "LAN_RE_VALOR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 512
    .local v13, "idxLAN_RE_VALOR":I
    const-string v0, "LAN_IN_TIPO"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 513
    .local v10, "idxLAN_IN_TIPO":I
    const-string v0, "LAN_RE_DESCONTO"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 514
    .local v11, "idxLAN_RE_DESCONTO":I
    const-string v0, "LAN_RE_MULTA"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 516
    .local v12, "idxLAN_RE_MULTA":I
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 517
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    add-float/2addr v0, v1

    add-float v16, v16, v0

    .line 521
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 515
    if-nez v0, :cond_0

    .line 523
    .end local v10    # "idxLAN_IN_TIPO":I
    .end local v11    # "idxLAN_RE_DESCONTO":I
    .end local v12    # "idxLAN_RE_MULTA":I
    .end local v13    # "idxLAN_RE_VALOR":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 528
    sub-float v0, v16, v14

    add-float/2addr v0, v15

    .end local v8    # "c":Landroid/database/Cursor;
    :goto_1
    return v0

    .line 519
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "idxLAN_IN_TIPO":I
    .restart local v11    # "idxLAN_RE_DESCONTO":I
    .restart local v12    # "idxLAN_RE_MULTA":I
    .restart local v13    # "idxLAN_RE_VALOR":I
    :cond_2
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getFloat(I)F
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v14, v0

    goto :goto_0

    .line 524
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v10    # "idxLAN_IN_TIPO":I
    .end local v11    # "idxLAN_RE_DESCONTO":I
    .end local v12    # "idxLAN_RE_MULTA":I
    .end local v13    # "idxLAN_RE_VALOR":I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 525
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "lancamento"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public calculaSaldoInicialContas()F
    .locals 12

    .prologue
    .line 532
    const/4 v11, 0x0

    .line 534
    .local v11, "total_inicial":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_CONTA"

    sget-object v2, Lcom/controleFinanceiro/conta/Conta;->colunas:[Ljava/lang/String;

    const-string v3, "_id <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 535
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    const-string v0, "CON_RE_VALORINICIAL"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 538
    .local v10, "idxCON_RE_VALORINICIAL":I
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    add-float/2addr v11, v0

    .line 539
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 537
    if-nez v0, :cond_0

    .line 541
    .end local v10    # "idxCON_RE_VALORINICIAL":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 546
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 542
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 543
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "conta"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar a Conta: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculaTotalCategoria(ILjava/lang/String;Ljava/lang/String;)F
    .locals 16
    .param p1, "cod_categoria"    # I
    .param p2, "intervalo_inicial"    # Ljava/lang/String;
    .param p3, "intervalo_final"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v15, 0x0

    .line 553
    .local v15, "total_categoria":F
    :try_start_0
    sget-object v2, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "FIN_LANCAMENTO"

    sget-object v4, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LAN_IN_CATEGORIA = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LAN_DT_VENCIMENTO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "LAN_DT_VENCIMENTO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 554
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    const-string v2, "LAN_RE_VALOR"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 556
    .local v14, "idxLAN_RE_VALOR":I
    const-string v2, "LAN_RE_DESCONTO"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 557
    .local v12, "idxLAN_RE_DESCONTO":I
    const-string v2, "LAN_RE_MULTA"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 559
    .local v13, "idxLAN_RE_MULTA":I
    :cond_0
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    add-float/2addr v2, v3

    add-float/2addr v15, v2

    .line 560
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 558
    if-nez v2, :cond_0

    .line 562
    .end local v12    # "idxLAN_RE_DESCONTO":I
    .end local v13    # "idxLAN_RE_MULTA":I
    .end local v14    # "idxLAN_RE_VALOR":I
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v15

    .line 567
    .end local v10    # "c":Landroid/database/Cursor;
    :goto_0
    return v2

    .line 563
    :catch_0
    move-exception v2

    move-object v11, v2

    .line 564
    .local v11, "e":Landroid/database/SQLException;
    const-string v2, "lancamento"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public calculaTotalDespesas()F
    .locals 14

    .prologue
    .line 419
    const/4 v13, 0x0

    .line 421
    .local v13, "total_despesas":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_LANCAMENTO"

    sget-object v2, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    const-string v3, "LAN_IN_TIPO = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 422
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "LAN_RE_VALOR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 424
    .local v12, "idxLAN_RE_VALOR":I
    const-string v0, "LAN_RE_DESCONTO"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 425
    .local v10, "idxLAN_RE_DESCONTO":I
    const-string v0, "LAN_RE_MULTA"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 427
    .local v11, "idxLAN_RE_MULTA":I
    :cond_0
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v13, v0

    .line 428
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 426
    if-nez v0, :cond_0

    .line 430
    .end local v10    # "idxLAN_RE_DESCONTO":I
    .end local v11    # "idxLAN_RE_MULTA":I
    .end local v12    # "idxLAN_RE_VALOR":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v13

    .line 435
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 431
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 432
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "lancamento"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculaTotalDespesasAberto()F
    .locals 12

    .prologue
    .line 459
    const/4 v11, 0x0

    .line 461
    .local v11, "total_despesas":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_LANCAMENTO"

    sget-object v2, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    const-string v3, "LAN_IN_TIPO = 1 AND LAN_IN_STATUS = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 462
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    const-string v0, "LAN_RE_VALOR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 465
    .local v10, "idxLAN_RE_VALOR":I
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    add-float/2addr v11, v0

    .line 466
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 464
    if-nez v0, :cond_0

    .line 468
    .end local v10    # "idxLAN_RE_VALOR":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 473
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 469
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 470
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "lancamento"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculaTotalReceitas()F
    .locals 14

    .prologue
    .line 398
    const/4 v13, 0x0

    .line 400
    .local v13, "total_receitas":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_LANCAMENTO"

    sget-object v2, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    const-string v3, "LAN_IN_TIPO = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 401
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    const-string v0, "LAN_RE_VALOR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 403
    .local v12, "idxLAN_RE_VALOR":I
    const-string v0, "LAN_RE_DESCONTO"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 404
    .local v10, "idxLAN_RE_DESCONTO":I
    const-string v0, "LAN_RE_MULTA"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 406
    .local v11, "idxLAN_RE_MULTA":I
    :cond_0
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr v13, v0

    .line 407
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 405
    if-nez v0, :cond_0

    .line 409
    .end local v10    # "idxLAN_RE_DESCONTO":I
    .end local v11    # "idxLAN_RE_MULTA":I
    .end local v12    # "idxLAN_RE_VALOR":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v13

    .line 414
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 410
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 411
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "lancamento"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public calculaTotalReceitasAberto()F
    .locals 12

    .prologue
    .line 440
    const/4 v11, 0x0

    .line 442
    .local v11, "total_receitas":F
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_LANCAMENTO"

    sget-object v2, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    const-string v3, "LAN_IN_TIPO = 0 AND LAN_IN_STATUS = 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 443
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    const-string v0, "LAN_RE_VALOR"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 446
    .local v10, "idxLAN_RE_VALOR":I
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    add-float/2addr v11, v0

    .line 447
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 445
    if-nez v0, :cond_0

    .line 449
    .end local v10    # "idxLAN_RE_VALOR":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 454
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 450
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 451
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "lancamento"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deletar(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 120
    const-string v2, "_id=?"

    .line 122
    .local v2, "where":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "_id":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 125
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->deletar(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "count":I
    return v1
.end method

.method public deletar(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 132
    sget-object v1, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_LANCAMENTO"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 133
    .local v0, "count":I
    const-string v1, "lancamento"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deletou ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] registros"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v0
.end method

.method public fechar()V
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 584
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 586
    :cond_0
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 182
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_LANCAMENTO"

    sget-object v2, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 184
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "lancamento"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar as contas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 185
    goto :goto_0
.end method

.method public inserir(Landroid/content/ContentValues;)J
    .locals 5
    .param p1, "valores"    # Landroid/content/ContentValues;

    .prologue
    .line 80
    sget-object v2, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "FIN_LANCAMENTO"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 81
    .local v0, "id":J
    return-wide v0
.end method

.method public inserir(Lcom/controleFinanceiro/lancamento/Lancamento;)J
    .locals 5
    .param p1, "lancamento"    # Lcom/controleFinanceiro/lancamento/Lancamento;

    .prologue
    .line 59
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "LAN_ST_DESCRICAO"

    iget-object v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "LAN_DT_VENCIMENTO"

    iget-object v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "LAN_IN_STATUS"

    iget v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v3, "LAN_RE_VALOR"

    iget-object v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "LAN_IN_CATEGORIA"

    iget v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v3, "LAN_IN_EMPRESA"

    iget v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v3, "LAN_IN_CONTA"

    iget v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string v3, "LAN_IN_TIPO"

    iget v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v3, "LAN_ST_OBSERVACAO"

    iget-object v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_OBSERVACAO:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "LAN_RE_DESCONTO"

    iget-object v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_DESCONTO:Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "LAN_RE_MULTA"

    iget-object v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_MULTA:Ljava/lang/Number;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "LAN_DT_PAGAMENTO"

    iget-object v4, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_PAGAMENTO:Ljava/sql/Date;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->inserir(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 75
    .local v0, "id":J
    return-wide v0
.end method

.method public listaLancamentoPorVencimento(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .param p1, "data_inicial"    # Ljava/lang/String;
    .param p2, "data_final"    # Ljava/lang/String;
    .param p3, "data_hoje"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/lancamento/Lancamento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v25, "lancamentos":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/lancamento/Lancamento;>;"
    :try_start_0
    sget-object v3, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "FIN_LANCAMENTO"

    sget-object v5, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LAN_DT_VENCIMENTO>=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "LAN_DT_VENCIMENTO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 263
    .local v11, "c":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 267
    .local v13, "idxId":I
    const-string v3, "LAN_ST_DESCRICAO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 268
    .local v23, "idxLAN_ST_DESCRICAO":I
    const-string v3, "LAN_DT_VENCIMENTO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 269
    .local v14, "idxLAN_DT_VENCIMENTO":I
    const-string v3, "LAN_IN_STATUS"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 270
    .local v18, "idxLAN_IN_STATUS":I
    const-string v3, "LAN_RE_VALOR"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 271
    .local v22, "idxLAN_RE_VALOR":I
    const-string v3, "LAN_IN_CATEGORIA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 272
    .local v15, "idxLAN_IN_CATEGORIA":I
    const-string v3, "LAN_IN_EMPRESA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 273
    .local v17, "idxLAN_IN_EMPRESA":I
    const-string v3, "LAN_IN_CONTA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 274
    .local v16, "idxLAN_IN_CONTA":I
    const-string v3, "LAN_RE_DESCONTO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 275
    .local v20, "idxLAN_RE_DESCONTO":I
    const-string v3, "LAN_RE_MULTA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 276
    .local v21, "idxLAN_RE_MULTA":I
    const-string v3, "LAN_IN_TIPO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 280
    .local v19, "idxLAN_IN_TIPO":I
    :cond_0
    new-instance v24, Lcom/controleFinanceiro/lancamento/Lancamento;

    invoke-direct/range {v24 .. v24}, Lcom/controleFinanceiro/lancamento/Lancamento;-><init>()V

    .line 281
    .local v24, "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    .line 285
    move-object v0, v11

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    .line 286
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    .line 287
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    .line 288
    move-object v0, v11

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    sub-float/2addr v3, v4

    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    .line 289
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    .line 290
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    .line 291
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    .line 292
    move-object v0, v11

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    .line 294
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object v3, v0

    invoke-static/range {p3 .. p3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/sql/Date;->compareTo(Ljava/util/Date;)I

    move-result v26

    .line 296
    .local v26, "vencido":I
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 297
    if-gez v26, :cond_2

    .line 298
    const v3, 0x7f02001c

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    .line 308
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 279
    if-nez v3, :cond_0

    .line 311
    .end local v13    # "idxId":I
    .end local v14    # "idxLAN_DT_VENCIMENTO":I
    .end local v15    # "idxLAN_IN_CATEGORIA":I
    .end local v16    # "idxLAN_IN_CONTA":I
    .end local v17    # "idxLAN_IN_EMPRESA":I
    .end local v18    # "idxLAN_IN_STATUS":I
    .end local v19    # "idxLAN_IN_TIPO":I
    .end local v20    # "idxLAN_RE_DESCONTO":I
    .end local v21    # "idxLAN_RE_MULTA":I
    .end local v22    # "idxLAN_RE_VALOR":I
    .end local v23    # "idxLAN_ST_DESCRICAO":I
    .end local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v26    # "vencido":I
    :cond_1
    new-instance v3, Lcom/controleFinanceiro/lancamento/RepositorioLancamento$2;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento$2;-><init>(Lcom/controleFinanceiro/lancamento/RepositorioLancamento;)V

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v3, v25

    .line 322
    .end local v11    # "c":Landroid/database/Cursor;
    :goto_1
    return-object v3

    .line 299
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v13    # "idxId":I
    .restart local v14    # "idxLAN_DT_VENCIMENTO":I
    .restart local v15    # "idxLAN_IN_CATEGORIA":I
    .restart local v16    # "idxLAN_IN_CONTA":I
    .restart local v17    # "idxLAN_IN_EMPRESA":I
    .restart local v18    # "idxLAN_IN_STATUS":I
    .restart local v19    # "idxLAN_IN_TIPO":I
    .restart local v20    # "idxLAN_RE_DESCONTO":I
    .restart local v21    # "idxLAN_RE_MULTA":I
    .restart local v22    # "idxLAN_RE_VALOR":I
    .restart local v23    # "idxLAN_ST_DESCRICAO":I
    .restart local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .restart local v26    # "vencido":I
    :cond_2
    if-nez v26, :cond_3

    .line 300
    const v3, 0x7f020001

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v13    # "idxId":I
    .end local v14    # "idxLAN_DT_VENCIMENTO":I
    .end local v15    # "idxLAN_IN_CATEGORIA":I
    .end local v16    # "idxLAN_IN_CONTA":I
    .end local v17    # "idxLAN_IN_EMPRESA":I
    .end local v18    # "idxLAN_IN_STATUS":I
    .end local v19    # "idxLAN_IN_TIPO":I
    .end local v20    # "idxLAN_RE_DESCONTO":I
    .end local v21    # "idxLAN_RE_MULTA":I
    .end local v22    # "idxLAN_RE_VALOR":I
    .end local v23    # "idxLAN_ST_DESCRICAO":I
    .end local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v26    # "vencido":I
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 318
    .local v12, "e":Landroid/database/SQLException;
    const-string v3, "lancamento"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v3, 0x0

    goto :goto_1

    .line 302
    .end local v12    # "e":Landroid/database/SQLException;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v13    # "idxId":I
    .restart local v14    # "idxLAN_DT_VENCIMENTO":I
    .restart local v15    # "idxLAN_IN_CATEGORIA":I
    .restart local v16    # "idxLAN_IN_CONTA":I
    .restart local v17    # "idxLAN_IN_EMPRESA":I
    .restart local v18    # "idxLAN_IN_STATUS":I
    .restart local v19    # "idxLAN_IN_TIPO":I
    .restart local v20    # "idxLAN_RE_DESCONTO":I
    .restart local v21    # "idxLAN_RE_MULTA":I
    .restart local v22    # "idxLAN_RE_VALOR":I
    .restart local v23    # "idxLAN_ST_DESCRICAO":I
    .restart local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .restart local v26    # "vencido":I
    :cond_3
    const v3, 0x7f020016

    :try_start_1
    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    goto :goto_0

    .line 305
    :cond_4
    const v3, 0x7f020016

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public listaLancamentosPendentes(Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .param p1, "data_hoje"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/lancamento/Lancamento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v25, "lancamentos":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/lancamento/Lancamento;>;"
    :try_start_0
    sget-object v3, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "FIN_LANCAMENTO"

    sget-object v5, Lcom/controleFinanceiro/lancamento/Lancamento;->colunas:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LAN_DT_VENCIMENTO <= \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "LAN_IN_STATUS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 334
    .local v11, "c":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 338
    .local v13, "idxId":I
    const-string v3, "LAN_ST_DESCRICAO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 339
    .local v23, "idxLAN_ST_DESCRICAO":I
    const-string v3, "LAN_DT_VENCIMENTO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 340
    .local v14, "idxLAN_DT_VENCIMENTO":I
    const-string v3, "LAN_IN_STATUS"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 341
    .local v18, "idxLAN_IN_STATUS":I
    const-string v3, "LAN_RE_VALOR"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 342
    .local v22, "idxLAN_RE_VALOR":I
    const-string v3, "LAN_IN_CATEGORIA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 343
    .local v15, "idxLAN_IN_CATEGORIA":I
    const-string v3, "LAN_IN_EMPRESA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 344
    .local v17, "idxLAN_IN_EMPRESA":I
    const-string v3, "LAN_IN_CONTA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 345
    .local v16, "idxLAN_IN_CONTA":I
    const-string v3, "LAN_RE_DESCONTO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 346
    .local v20, "idxLAN_RE_DESCONTO":I
    const-string v3, "LAN_RE_MULTA"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 347
    .local v21, "idxLAN_RE_MULTA":I
    const-string v3, "LAN_IN_TIPO"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 351
    .local v19, "idxLAN_IN_TIPO":I
    :cond_0
    new-instance v24, Lcom/controleFinanceiro/lancamento/Lancamento;

    invoke-direct/range {v24 .. v24}, Lcom/controleFinanceiro/lancamento/Lancamento;-><init>()V

    .line 352
    .local v24, "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    .line 356
    move-object v0, v11

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    .line 357
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    .line 358
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    .line 359
    move-object v0, v11

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    sub-float/2addr v3, v4

    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    .line 360
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    .line 361
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    .line 362
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    .line 363
    move-object v0, v11

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    .line 365
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/sql/Date;->compareTo(Ljava/util/Date;)I

    move-result v26

    .line 367
    .local v26, "vencido":I
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_4

    .line 368
    if-gez v26, :cond_2

    .line 369
    const v3, 0x7f02001c

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    .line 379
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 350
    if-nez v3, :cond_0

    .line 382
    .end local v13    # "idxId":I
    .end local v14    # "idxLAN_DT_VENCIMENTO":I
    .end local v15    # "idxLAN_IN_CATEGORIA":I
    .end local v16    # "idxLAN_IN_CONTA":I
    .end local v17    # "idxLAN_IN_EMPRESA":I
    .end local v18    # "idxLAN_IN_STATUS":I
    .end local v19    # "idxLAN_IN_TIPO":I
    .end local v20    # "idxLAN_RE_DESCONTO":I
    .end local v21    # "idxLAN_RE_MULTA":I
    .end local v22    # "idxLAN_RE_VALOR":I
    .end local v23    # "idxLAN_ST_DESCRICAO":I
    .end local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v26    # "vencido":I
    :cond_1
    new-instance v3, Lcom/controleFinanceiro/lancamento/RepositorioLancamento$3;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento$3;-><init>(Lcom/controleFinanceiro/lancamento/RepositorioLancamento;)V

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 387
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v3, v25

    .line 393
    .end local v11    # "c":Landroid/database/Cursor;
    :goto_1
    return-object v3

    .line 370
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v13    # "idxId":I
    .restart local v14    # "idxLAN_DT_VENCIMENTO":I
    .restart local v15    # "idxLAN_IN_CATEGORIA":I
    .restart local v16    # "idxLAN_IN_CONTA":I
    .restart local v17    # "idxLAN_IN_EMPRESA":I
    .restart local v18    # "idxLAN_IN_STATUS":I
    .restart local v19    # "idxLAN_IN_TIPO":I
    .restart local v20    # "idxLAN_RE_DESCONTO":I
    .restart local v21    # "idxLAN_RE_MULTA":I
    .restart local v22    # "idxLAN_RE_VALOR":I
    .restart local v23    # "idxLAN_ST_DESCRICAO":I
    .restart local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .restart local v26    # "vencido":I
    :cond_2
    if-nez v26, :cond_3

    .line 371
    const v3, 0x7f020001

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v13    # "idxId":I
    .end local v14    # "idxLAN_DT_VENCIMENTO":I
    .end local v15    # "idxLAN_IN_CATEGORIA":I
    .end local v16    # "idxLAN_IN_CONTA":I
    .end local v17    # "idxLAN_IN_EMPRESA":I
    .end local v18    # "idxLAN_IN_STATUS":I
    .end local v19    # "idxLAN_IN_TIPO":I
    .end local v20    # "idxLAN_RE_DESCONTO":I
    .end local v21    # "idxLAN_RE_MULTA":I
    .end local v22    # "idxLAN_RE_VALOR":I
    .end local v23    # "idxLAN_ST_DESCRICAO":I
    .end local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v26    # "vencido":I
    :catch_0
    move-exception v3

    move-object v12, v3

    .line 389
    .local v12, "e":Landroid/database/SQLException;
    const-string v3, "lancamento"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Erro ao buscar o lan\u00e7amento pela descri\u00e7\u00e3o: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v3, 0x0

    goto :goto_1

    .line 373
    .end local v12    # "e":Landroid/database/SQLException;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v13    # "idxId":I
    .restart local v14    # "idxLAN_DT_VENCIMENTO":I
    .restart local v15    # "idxLAN_IN_CATEGORIA":I
    .restart local v16    # "idxLAN_IN_CONTA":I
    .restart local v17    # "idxLAN_IN_EMPRESA":I
    .restart local v18    # "idxLAN_IN_STATUS":I
    .restart local v19    # "idxLAN_IN_TIPO":I
    .restart local v20    # "idxLAN_RE_DESCONTO":I
    .restart local v21    # "idxLAN_RE_MULTA":I
    .restart local v22    # "idxLAN_RE_VALOR":I
    .restart local v23    # "idxLAN_ST_DESCRICAO":I
    .restart local v24    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .restart local v26    # "vencido":I
    :cond_3
    const v3, 0x7f020016

    :try_start_1
    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    goto :goto_0

    .line 376
    :cond_4
    const v3, 0x7f020016

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public listarTodosLancamentos(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "data_hoje"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/lancamento/Lancamento;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 193
    .local v3, "c":Landroid/database/Cursor;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v16, "lancamentos":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/lancamento/Lancamento;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 198
    const-string v18, "_id"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 199
    .local v4, "idxId":I
    const-string v18, "LAN_ST_DESCRICAO"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 200
    .local v14, "idxLAN_ST_DESCRICAO":I
    const-string v18, "LAN_DT_VENCIMENTO"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, "idxLAN_DT_VENCIMENTO":I
    const-string v18, "LAN_IN_STATUS"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 202
    .local v9, "idxLAN_IN_STATUS":I
    const-string v18, "LAN_RE_VALOR"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 203
    .local v13, "idxLAN_RE_VALOR":I
    const-string v18, "LAN_IN_CATEGORIA"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 204
    .local v6, "idxLAN_IN_CATEGORIA":I
    const-string v18, "LAN_IN_EMPRESA"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 205
    .local v8, "idxLAN_IN_EMPRESA":I
    const-string v18, "LAN_IN_CONTA"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 207
    .local v7, "idxLAN_IN_CONTA":I
    const-string v18, "LAN_IN_TIPO"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 208
    .local v10, "idxLAN_IN_TIPO":I
    const-string v18, "LAN_RE_DESCONTO"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 209
    .local v11, "idxLAN_RE_DESCONTO":I
    const-string v18, "LAN_RE_MULTA"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 214
    .local v12, "idxLAN_RE_MULTA":I
    :cond_0
    new-instance v15, Lcom/controleFinanceiro/lancamento/Lancamento;

    invoke-direct {v15}, Lcom/controleFinanceiro/lancamento/Lancamento;-><init>()V

    .line 215
    .local v15, "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object v2, v15

    iput-wide v0, v2, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    .line 219
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_ST_DESCRICAO:Ljava/lang/String;

    .line 220
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    .line 221
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_STATUS:I

    .line 222
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v18

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    sub-float v18, v18, v19

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getFloat(I)F

    move-result v19

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    iput-object v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_RE_VALOR:Ljava/lang/Number;

    .line 223
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CATEGORIA:I

    .line 224
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_EMPRESA:I

    .line 225
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_CONTA:I

    .line 227
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IN_TIPO:I

    .line 230
    move-object v0, v15

    iget-object v0, v0, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_DT_VENCIMENTO:Ljava/sql/Date;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Ljava/sql/Date;->valueOf(Ljava/lang/String;)Ljava/sql/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/sql/Date;->compareTo(Ljava/util/Date;)I

    move-result v17

    .line 232
    .local v17, "vencido":I
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-nez v18, :cond_4

    .line 233
    if-gez v17, :cond_2

    .line 234
    const v18, 0x7f02001c

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    .line 243
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    .line 213
    if-nez v18, :cond_0

    .line 246
    .end local v4    # "idxId":I
    .end local v5    # "idxLAN_DT_VENCIMENTO":I
    .end local v6    # "idxLAN_IN_CATEGORIA":I
    .end local v7    # "idxLAN_IN_CONTA":I
    .end local v8    # "idxLAN_IN_EMPRESA":I
    .end local v9    # "idxLAN_IN_STATUS":I
    .end local v10    # "idxLAN_IN_TIPO":I
    .end local v11    # "idxLAN_RE_DESCONTO":I
    .end local v12    # "idxLAN_RE_MULTA":I
    .end local v13    # "idxLAN_RE_VALOR":I
    .end local v14    # "idxLAN_ST_DESCRICAO":I
    .end local v15    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .end local v17    # "vencido":I
    :cond_1
    new-instance v18, Lcom/controleFinanceiro/lancamento/RepositorioLancamento$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento$1;-><init>(Lcom/controleFinanceiro/lancamento/RepositorioLancamento;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 251
    return-object v16

    .line 235
    .restart local v4    # "idxId":I
    .restart local v5    # "idxLAN_DT_VENCIMENTO":I
    .restart local v6    # "idxLAN_IN_CATEGORIA":I
    .restart local v7    # "idxLAN_IN_CONTA":I
    .restart local v8    # "idxLAN_IN_EMPRESA":I
    .restart local v9    # "idxLAN_IN_STATUS":I
    .restart local v10    # "idxLAN_IN_TIPO":I
    .restart local v11    # "idxLAN_RE_DESCONTO":I
    .restart local v12    # "idxLAN_RE_MULTA":I
    .restart local v13    # "idxLAN_RE_VALOR":I
    .restart local v14    # "idxLAN_ST_DESCRICAO":I
    .restart local v15    # "lancamento":Lcom/controleFinanceiro/lancamento/Lancamento;
    .restart local v17    # "vencido":I
    :cond_2
    if-nez v17, :cond_3

    .line 236
    const v18, 0x7f020001

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    goto :goto_0

    .line 238
    :cond_3
    const v18, 0x7f020016

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    goto :goto_0

    .line 241
    :cond_4
    const v18, 0x7f020008

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Lcom/controleFinanceiro/lancamento/Lancamento;->LAN_IM_STATUS:I

    goto :goto_0
.end method

.method public query(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "queryBuilder"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 576
    sget-object v1, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 577
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public salvar(Lcom/controleFinanceiro/lancamento/Lancamento;)J
    .locals 4
    .param p1, "lancamento"    # Lcom/controleFinanceiro/lancamento/Lancamento;

    .prologue
    .line 45
    iget-wide v0, p1, Lcom/controleFinanceiro/lancamento/Lancamento;->id:J

    .line 47
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->atualizar(Lcom/controleFinanceiro/lancamento/Lancamento;)I

    .line 54
    :goto_0
    return-wide v0

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/lancamento/RepositorioLancamento;->inserir(Lcom/controleFinanceiro/lancamento/Lancamento;)J

    move-result-wide v0

    goto :goto_0
.end method
