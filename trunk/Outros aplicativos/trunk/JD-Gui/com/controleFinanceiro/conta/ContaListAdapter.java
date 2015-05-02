package com.controleFinanceiro.conta;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

public class ContaListAdapter
  extends BaseAdapter
{
  private Context context;
  private List<Conta> lista;
  
  public ContaListAdapter(Context paramContext, List<Conta> paramList)
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
    Conta localConta = (Conta)this.lista.get(paramInt);
    View localView = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903042, null);
    try
    {
      TextView localTextView1 = (TextView)localView.findViewById(2131099655);
      String str1 = localConta.CON_ST_BANCO;
      localTextView1.setText(str1);
      TextView localTextView2 = (TextView)localView.findViewById(2131099656);
      String str2 = String.valueOf(localConta.CON_CH_NCONTA);
      localTextView2.setText(str2);
      TextView localTextView3 = (TextView)localView.findViewById(2131099657);
      NumberFormat localNumberFormat = NumberFormat.getInstance(new Locale("pt", "BR"));
      localNumberFormat.setMinimumFractionDigits(2);
      Number localNumber = localConta.CON_RE_VALORATUAL;
      String str3 = localNumberFormat.format(localNumber);
      localTextView3.setText(str3);
      return localView;
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
 * Qualified Name:     com.controleFinanceiro.conta.ContaListAdapter
 * JD-Core Version:    0.7.0.1
 */