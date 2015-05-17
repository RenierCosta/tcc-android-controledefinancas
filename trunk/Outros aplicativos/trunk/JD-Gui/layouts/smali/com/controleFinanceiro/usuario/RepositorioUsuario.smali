.class public Lcom/controleFinanceiro/usuario/RepositorioUsuario;
.super Ljava/lang/Object;
.source "RepositorioUsuario.java"


# static fields
.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field public static final NOME_TABELA:Ljava/lang/String; = "FIN_USUARIO"

.field private static final USUARIO:Ljava/lang/String; = "usuario"


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "controle_financeiro"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 24
    return-void
.end method


# virtual methods
.method public atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "valores"    # Landroid/content/ContentValues;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_USUARIO"

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "count":I
    const-string v1, "usuario"

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

    .line 72
    return v0
.end method

.method public atualizar(Lcom/controleFinanceiro/usuario/Usuario;)I
    .locals 7
    .param p1, "usuario"    # Lcom/controleFinanceiro/usuario/Usuario;

    .prologue
    .line 56
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "USU_ST_SENHA"

    iget-object v6, p1, Lcom/controleFinanceiro/usuario/Usuario;->USU_ST_SENHA:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget v5, p1, Lcom/controleFinanceiro/usuario/Usuario;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "_id":Ljava/lang/String;
    const-string v3, "_id=?"

    .line 62
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 64
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "count":I
    return v1
.end method

.method public buscarUsuario(J)Lcom/controleFinanceiro/usuario/Usuario;
    .locals 12
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 93
    iget-object v0, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_USUARIO"

    sget-object v3, Lcom/controleFinanceiro/usuario/Usuario;->colunas:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 95
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    new-instance v11, Lcom/controleFinanceiro/usuario/Usuario;

    invoke-direct {v11}, Lcom/controleFinanceiro/usuario/Usuario;-><init>()V

    .line 101
    .local v11, "usuario":Lcom/controleFinanceiro/usuario/Usuario;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/controleFinanceiro/usuario/Usuario;->id:I

    .line 102
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/usuario/Usuario;->USU_ST_SENHA:Ljava/lang/String;

    move-object v0, v11

    .line 107
    .end local v11    # "usuario":Lcom/controleFinanceiro/usuario/Usuario;
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 107
    goto :goto_0
.end method

.method public deletar(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 76
    const-string v2, "_id=?"

    .line 78
    .local v2, "where":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "_id":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 81
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->deletar(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, "count":I
    return v1
.end method

.method public deletar(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_USUARIO"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "count":I
    const-string v1, "usuario"

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

    .line 89
    return v0
.end method

.method public fechar()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 152
    :cond_0
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_USUARIO"

    sget-object v2, Lcom/controleFinanceiro/usuario/Usuario;->colunas:[Ljava/lang/String;

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

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 135
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "usuario"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar os usu\u00e1rios: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 136
    goto :goto_0
.end method

.method public inserir(Landroid/content/ContentValues;)J
    .locals 5
    .param p1, "valores"    # Landroid/content/ContentValues;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "FIN_USUARIO"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 52
    .local v0, "id":J
    return-wide v0
.end method

.method public inserir(Lcom/controleFinanceiro/usuario/Usuario;)J
    .locals 5
    .param p1, "usuario"    # Lcom/controleFinanceiro/usuario/Usuario;

    .prologue
    .line 43
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "USU_ST_SENHA"

    iget-object v4, p1, Lcom/controleFinanceiro/usuario/Usuario;->USU_ST_SENHA:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->inserir(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 47
    .local v0, "id":J
    return-wide v0
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
    .line 142
    iget-object v1, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 143
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public recuperaSenha(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 112
    const-string v10, ""

    .line 115
    .local v10, "senha":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_USUARIO"

    sget-object v2, Lcom/controleFinanceiro/usuario/Usuario;->colunas:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 117
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 122
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v10

    .line 128
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 124
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "usuario"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar o usu\u00e1rio: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, ""

    goto :goto_0
.end method

.method public salvar(Lcom/controleFinanceiro/usuario/Usuario;)J
    .locals 4
    .param p1, "usuario"    # Lcom/controleFinanceiro/usuario/Usuario;

    .prologue
    .line 31
    iget v2, p1, Lcom/controleFinanceiro/usuario/Usuario;->id:I

    int-to-long v0, v2

    .line 33
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->atualizar(Lcom/controleFinanceiro/usuario/Usuario;)I

    .line 39
    :goto_0
    return-wide v0

    .line 36
    :cond_0
    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/usuario/RepositorioUsuario;->inserir(Lcom/controleFinanceiro/usuario/Usuario;)J

    move-result-wide v0

    goto :goto_0
.end method
