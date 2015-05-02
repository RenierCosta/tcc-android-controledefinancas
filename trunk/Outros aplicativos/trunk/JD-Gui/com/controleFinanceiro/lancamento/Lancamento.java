package com.controleFinanceiro.lancamento;

import android.provider.BaseColumns;
import java.sql.Date;

public class Lancamento
{
  public static final String AUTHORITY = "com.controleFinanceiro.lancamento";
  public static String[] colunas;
  public Date LAN_DT_PAGAMENTO;
  public Date LAN_DT_VENCIMENTO;
  public int LAN_IM_STATUS;
  public int LAN_IN_CATEGORIA;
  public int LAN_IN_CONTA;
  public int LAN_IN_EMPRESA;
  public int LAN_IN_STATUS;
  public int LAN_IN_TIPO;
  public Number LAN_RE_DESCONTO;
  public Number LAN_RE_MULTA;
  public Number LAN_RE_VALOR;
  public String LAN_ST_DESCRICAO;
  public String LAN_ST_OBSERVACAO;
  public long id;
  
  static
  {
    String[] arrayOfString = new String[13];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "LAN_ST_DESCRICAO";
    arrayOfString[2] = "LAN_DT_VENCIMENTO";
    arrayOfString[3] = "LAN_IN_STATUS";
    arrayOfString[4] = "LAN_RE_VALOR";
    arrayOfString[5] = "LAN_IN_CATEGORIA";
    arrayOfString[6] = "LAN_IN_EMPRESA";
    arrayOfString[7] = "LAN_IN_CONTA";
    arrayOfString[8] = "LAN_IN_TIPO";
    arrayOfString[9] = "LAN_ST_OBSERVACAO";
    arrayOfString[10] = "LAN_RE_DESCONTO";
    arrayOfString[11] = "LAN_RE_MULTA";
    arrayOfString[12] = "LAN_DT_PAGAMENTO";
    colunas = arrayOfString;
  }
  
  public Lancamento() {}
  
  public Lancamento(long paramLong, String paramString1, Date paramDate1, int paramInt1, Number paramNumber1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, String paramString2, Number paramNumber2, Number paramNumber3, Date paramDate2)
  {
    this.id = paramLong;
    this.LAN_ST_DESCRICAO = paramString1;
    this.LAN_DT_VENCIMENTO = paramDate1;
    this.LAN_RE_VALOR = paramNumber1;
    this.LAN_IN_STATUS = paramInt1;
    this.LAN_IN_CATEGORIA = paramInt2;
    this.LAN_IN_EMPRESA = paramInt3;
    this.LAN_IN_CONTA = paramInt4;
    this.LAN_IM_STATUS = paramInt5;
    this.LAN_IN_TIPO = paramInt6;
    this.LAN_ST_OBSERVACAO = paramString2;
    this.LAN_RE_DESCONTO = paramNumber2;
    this.LAN_RE_MULTA = paramNumber3;
    this.LAN_DT_PAGAMENTO = paramDate2;
  }
  
  public Lancamento(String paramString1, Date paramDate1, int paramInt1, Number paramNumber1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, String paramString2, Number paramNumber2, Number paramNumber3, Date paramDate2)
  {
    this.LAN_ST_DESCRICAO = paramString1;
    this.LAN_DT_VENCIMENTO = paramDate1;
    this.LAN_RE_VALOR = paramNumber1;
    this.LAN_IN_STATUS = paramInt1;
    this.LAN_IN_CATEGORIA = paramInt2;
    this.LAN_IN_EMPRESA = paramInt3;
    this.LAN_IN_CONTA = paramInt4;
    this.LAN_IM_STATUS = paramInt5;
    this.LAN_IN_TIPO = paramInt6;
    this.LAN_ST_OBSERVACAO = paramString2;
    this.LAN_RE_DESCONTO = paramNumber2;
    this.LAN_RE_MULTA = paramNumber3;
    this.LAN_DT_PAGAMENTO = paramDate2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("Descrição: ");
    String str1 = this.LAN_ST_DESCRICAO;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(str1).append(" Vencimento: ");
    Date localDate1 = this.LAN_DT_VENCIMENTO;
    StringBuilder localStringBuilder3 = localStringBuilder2.append(localDate1).append(" Valor: ");
    Number localNumber1 = this.LAN_RE_VALOR;
    StringBuilder localStringBuilder4 = localStringBuilder3.append(localNumber1).append(" Status: ");
    int i = this.LAN_IN_STATUS;
    StringBuilder localStringBuilder5 = localStringBuilder4.append(i).append(" Categoria: ");
    int j = this.LAN_IN_CATEGORIA;
    StringBuilder localStringBuilder6 = localStringBuilder5.append(j).append(" Empresa: ");
    int k = this.LAN_IN_EMPRESA;
    StringBuilder localStringBuilder7 = localStringBuilder6.append(k).append(" Conta: ");
    int m = this.LAN_IN_CONTA;
    StringBuilder localStringBuilder8 = localStringBuilder7.append(m).append(" Observação: ");
    String str2 = this.LAN_ST_OBSERVACAO;
    StringBuilder localStringBuilder9 = localStringBuilder8.append(str2).append(" Desconto: ");
    Number localNumber2 = this.LAN_RE_DESCONTO;
    StringBuilder localStringBuilder10 = localStringBuilder9.append(localNumber2).append(" Multa: ");
    Number localNumber3 = this.LAN_RE_MULTA;
    StringBuilder localStringBuilder11 = localStringBuilder10.append(localNumber3).append(" Pagamento: ");
    Date localDate2 = this.LAN_DT_PAGAMENTO;
    return localDate2;
  }
  
  public static final class Lancamentos
    implements BaseColumns
  {
    public static final String DEFAULT_SORT_ORDER = "LAN_DT_VENCIMENTO ASC";
    public static final String LAN_DT_PAGAMENTO = "LAN_DT_PAGAMENTO";
    public static final String LAN_DT_VENCIMENTO = "LAN_DT_VENCIMENTO";
    public static final String LAN_IN_CATEGORIA = "LAN_IN_CATEGORIA";
    public static final String LAN_IN_CONTA = "LAN_IN_CONTA";
    public static final String LAN_IN_EMPRESA = "LAN_IN_EMPRESA";
    public static final String LAN_IN_STATUS = "LAN_IN_STATUS";
    public static final String LAN_IN_TIPO = "LAN_IN_TIPO";
    public static final String LAN_RE_DESCONTO = "LAN_RE_DESCONTO";
    public static final String LAN_RE_MULTA = "LAN_RE_MULTA";
    public static final String LAN_RE_VALOR = "LAN_RE_VALOR";
    public static final String LAN_ST_DESCRICAO = "LAN_ST_DESCRICAO";
    public static final String LAN_ST_OBSERVACAO = "LAN_ST_OBSERVACAO";
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.lancamento.Lancamento
 * JD-Core Version:    0.7.0.1
 */