package com.controleFinanceiro.lancamento;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class LancamentoListAdapter
  extends BaseAdapter
{
  private Context context;
  private List<Lancamento> lista;
  
  public LancamentoListAdapter(Context paramContext, List<Lancamento> paramList)
  {
    this.context = paramContext;
    this.lista = paramList;
  }
  
  public int getCount()
  {
    return this.lista.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.lista.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    List localList = this.lista;
    int i = paramInt;
    Lancamento localLancamento = (Lancamento)localList.get(i);
    LayoutInflater localLayoutInflater = (LayoutInflater)this.context.getSystemService("layout_inflater");
    int j = 2130903058;
    ViewGroup localViewGroup = null;
    View localView = localLayoutInflater.inflate(j, localViewGroup);
    try
    {
      TextView localTextView1 = (TextView)localView.findViewById(2131099759);
      String str1 = localLancamento.LAN_ST_DESCRICAO;
      TextView localTextView2 = localTextView1;
      String str2 = str1;
      localTextView2.setText(str2);
      TextView localTextView3 = (TextView)localView.findViewById(2131099760);
      SimpleDateFormat localSimpleDateFormat1 = new java/text/SimpleDateFormat;
      SimpleDateFormat localSimpleDateFormat2 = localSimpleDateFormat1;
      String str3 = "dd/MM/yyyy";
      localSimpleDateFormat2.<init>(str3);
      SimpleDateFormat localSimpleDateFormat3 = new java/text/SimpleDateFormat;
      SimpleDateFormat localSimpleDateFormat4 = localSimpleDateFormat3;
      String str4 = "yyyy-MM-dd";
      localSimpleDateFormat4.<init>(str4);
      String str5 = String.valueOf(localLancamento.LAN_DT_VENCIMENTO);
      SimpleDateFormat localSimpleDateFormat5 = localSimpleDateFormat3;
      String str6 = str5;
      Date localDate = localSimpleDateFormat5.parse(str6);
      String str7 = String.valueOf(localSimpleDateFormat1.format(localDate));
      localTextView3.setText(str7);
      TextView localTextView4 = (TextView)localView.findViewById(2131099761);
      Locale localLocale1 = new java/util/Locale;
      Locale localLocale2 = localLocale1;
      String str8 = "pt";
      String str9 = "BR";
      localLocale2.<init>(str8, str9);
      NumberFormat localNumberFormat1 = NumberFormat.getInstance(localLocale1);
      NumberFormat localNumberFormat2 = localNumberFormat1;
      int k = 2;
      localNumberFormat2.setMinimumFractionDigits(k);
      Number localNumber1 = localLancamento.LAN_RE_VALOR;
      NumberFormat localNumberFormat3 = localNumberFormat1;
      Number localNumber2 = localNumber1;
      String str10 = localNumberFormat3.format(localNumber2);
      TextView localTextView5 = localTextView4;
      String str11 = str10;
      localTextView5.setText(str11);
      ImageView localImageView1 = (ImageView)localView.findViewById(2131099762);
      int m = localLancamento.LAN_IM_STATUS;
      ImageView localImageView2 = localImageView1;
      int n = m;
      localImageView2.setImageResource(n);
      TextView localTextView6 = (TextView)localView.findViewById(2131099763);
      if (localLancamento.LAN_IN_TIPO == 0)
      {
        TextView localTextView7 = localTextView6;
        String str12 = "Receita";
        localTextView7.setText(str12);
      }
      for (;;)
      {
        return localView;
        TextView localTextView8 = localTextView6;
        String str13 = "Despesa";
        localTextView8.setText(str13);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        StackTraceElement[] arrayOfStackTraceElement = localException.getStackTrace();
      }
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.lancamento.LancamentoListAdapter
 * JD-Core Version:    0.7.0.1
 */