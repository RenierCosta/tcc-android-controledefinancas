package com.controleFinanceiro.lancamento;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.ListView;
import com.controleFinanceiro.configuracao.Configuracao;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class CadastroLancamento
  extends ListActivity
{
  protected static final int BUSCAR = 6;
  protected static final int CONFIGURACAO = 5;
  protected static final int DIALOG_VENCIMENTO = 0;
  protected static final int DIALOG_VENCIMENTO1 = 1;
  protected static final int INSERIR_EDITAR = 1;
  protected static final int LISTAR_PENDENTES = 3;
  protected static final int LISTAR_TODOS = 4;
  protected static final int RESUMO = 2;
  protected static final int SOBRE = 7;
  public static RepositorioLancamento repositorio;
  private int anoVencimento;
  private int anoVencimento1;
  Button campoBuscarVencimento;
  Button campoBuscarVencimento1;
  private String dataVencimentoBD;
  private String dataVencimentoBD1;
  private int diaVencimento;
  private int diaVencimento1;
  private AlertDialog janelaBuscar;
  AlertDialog janelaSobre;
  private List<Lancamento> lancamentos;
  private DatePickerDialog.OnDateSetListener mDataVencimentoSetListener;
  private DatePickerDialog.OnDateSetListener mDataVencimentoSetListener1;
  private int mesVencimento;
  private int mesVencimento1;
  String tipo_lista = "p";
  
  public CadastroLancamento()
  {
    DatePickerDialog.OnDateSetListener local1 = new DatePickerDialog.OnDateSetListener()
    {
      public void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        CadastroLancamento.this.anoVencimento = paramAnonymousInt1;
        CadastroLancamento.this.mesVencimento = paramAnonymousInt2;
        CadastroLancamento.this.diaVencimento = paramAnonymousInt3;
        CadastroLancamento.this.atualizarVencimento();
      }
    };
    this.mDataVencimentoSetListener = local1;
    DatePickerDialog.OnDateSetListener local2 = new DatePickerDialog.OnDateSetListener()
    {
      public void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        CadastroLancamento.this.anoVencimento1 = paramAnonymousInt1;
        CadastroLancamento.this.mesVencimento1 = paramAnonymousInt2;
        CadastroLancamento.this.diaVencimento1 = paramAnonymousInt3;
        CadastroLancamento.this.atualizarVencimento1();
      }
    };
    this.mDataVencimentoSetListener1 = local2;
  }
  
  private void atualizarVencimento()
  {
    Button localButton = this.campoBuscarVencimento;
    StringBuilder localStringBuilder1 = new StringBuilder();
    int i = this.diaVencimento;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(i).append("/");
    int j = this.mesVencimento + 1;
    StringBuilder localStringBuilder3 = localStringBuilder2.append(j).append("/");
    int k = this.anoVencimento;
    StringBuilder localStringBuilder4 = localStringBuilder3.append(k).append("");
    localButton.setText(localStringBuilder4);
    String str1 = String.valueOf(this.anoVencimento);
    StringBuilder localStringBuilder5 = new StringBuilder(str1).append("-");
    String str2 = String.valueOf(this.mesVencimento + 1);
    String str3 = preencheZeros(str2, 2);
    StringBuilder localStringBuilder6 = localStringBuilder5.append(str3).append("-");
    String str4 = String.valueOf(this.diaVencimento);
    String str5 = preencheZeros(str4, 2);
    String str6 = str5;
    this.dataVencimentoBD = str6;
  }
  
  private void atualizarVencimento1()
  {
    Button localButton = this.campoBuscarVencimento1;
    StringBuilder localStringBuilder1 = new StringBuilder();
    int i = this.diaVencimento1;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(i).append("/");
    int j = this.mesVencimento1 + 1;
    StringBuilder localStringBuilder3 = localStringBuilder2.append(j).append("/");
    int k = this.anoVencimento1;
    StringBuilder localStringBuilder4 = localStringBuilder3.append(k).append("");
    localButton.setText(localStringBuilder4);
    String str1 = String.valueOf(this.anoVencimento1);
    StringBuilder localStringBuilder5 = new StringBuilder(str1).append("-");
    String str2 = String.valueOf(this.mesVencimento1 + 1);
    String str3 = preencheZeros(str2, 2);
    StringBuilder localStringBuilder6 = localStringBuilder5.append(str3).append("-");
    String str4 = String.valueOf(this.diaVencimento1);
    String str5 = preencheZeros(str4, 2);
    String str6 = str5;
    this.dataVencimentoBD1 = str6;
  }
  
  private String preencheZeros(String paramString, int paramInt)
  {
    int i = paramString.length();
    if (paramString.length() != paramInt) {
      do
      {
        paramString = "0" + paramString;
        i += 1;
      } while (i < paramInt);
    }
    return paramString;
  }
  
  protected void atualizarLista(String paramString)
  {
    Date localDate = new Date();
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    if (paramString.equals("p"))
    {
      RepositorioLancamento localRepositorioLancamento1 = repositorio;
      String str1 = localSimpleDateFormat.format(localDate);
      List localList1 = localRepositorioLancamento1.listaLancamentosPendentes(str1);
      this.lancamentos = localList1;
    }
    for (;;)
    {
      List localList2 = this.lancamentos;
      LancamentoListAdapter localLancamentoListAdapter = new LancamentoListAdapter(this, localList2);
      setListAdapter(localLancamentoListAdapter);
      return;
      if (paramString.equals("t"))
      {
        RepositorioLancamento localRepositorioLancamento2 = repositorio;
        String str2 = localSimpleDateFormat.format(localDate);
        List localList3 = localRepositorioLancamento2.listarTodosLancamentos(str2);
        this.lancamentos = localList3;
      }
      else if (paramString.equals("b"))
      {
        RepositorioLancamento localRepositorioLancamento3 = repositorio;
        String str3 = this.dataVencimentoBD;
        String str4 = this.dataVencimentoBD1;
        String str5 = localSimpleDateFormat.format(localDate);
        List localList4 = localRepositorioLancamento3.listaLancamentoPorVencimento(str3, str4, str5);
        this.lancamentos = localList4;
      }
    }
  }
  
  protected void editarLancamento(int paramInt)
  {
    Lancamento localLancamento = (Lancamento)this.lancamentos.get(paramInt);
    Intent localIntent1 = new Intent(this, EditarLancamento.class);
    long l = localLancamento.id;
    Intent localIntent2 = localIntent1.putExtra("_id", l);
    startActivityForResult(localIntent1, 1);
  }
  
  public void fecharJanelaBuscar()
  {
    this.janelaBuscar.cancel();
  }
  
  public void fecharJanelaSobre()
  {
    this.janelaSobre.cancel();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1) {
      return;
    }
    String str = this.tipo_lista;
    atualizarLista(str);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    repositorio = new RepositorioLancamentoScript(this);
    atualizarLista("p");
    View localView = LayoutInflater.from(this).inflate(2130903056, null);
    AlertDialog local3 = new AlertDialog(this)
    {
      protected void onCreate(Bundle paramAnonymousBundle)
      {
        super.onCreate(paramAnonymousBundle);
        CadastroLancamento localCadastroLancamento1 = CadastroLancamento.this;
        Button localButton1 = (Button)findViewById(2131099751);
        localCadastroLancamento1.campoBuscarVencimento = localButton1;
        CadastroLancamento localCadastroLancamento2 = CadastroLancamento.this;
        Button localButton2 = (Button)findViewById(2131099752);
        localCadastroLancamento2.campoBuscarVencimento1 = localButton2;
        Button localButton3 = CadastroLancamento.this.campoBuscarVencimento;
        View.OnClickListener local1 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            CadastroLancamento.this.showDialog(0);
          }
        };
        localButton3.setOnClickListener(local1);
        Button localButton4 = CadastroLancamento.this.campoBuscarVencimento1;
        View.OnClickListener local2 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            CadastroLancamento.this.showDialog(1);
          }
        };
        localButton4.setOnClickListener(local2);
        Calendar localCalendar = Calendar.getInstance();
        CadastroLancamento localCadastroLancamento3 = CadastroLancamento.this;
        int i = localCalendar.get(1);
        localCadastroLancamento3.anoVencimento1 = i;
        CadastroLancamento localCadastroLancamento4 = CadastroLancamento.this;
        int j = localCalendar.get(2);
        localCadastroLancamento4.mesVencimento1 = j;
        CadastroLancamento localCadastroLancamento5 = CadastroLancamento.this;
        int k = localCalendar.get(5);
        localCadastroLancamento5.diaVencimento1 = k;
        CadastroLancamento.this.atualizarVencimento1();
        localCalendar.add(2, -1);
        CadastroLancamento localCadastroLancamento6 = CadastroLancamento.this;
        int m = localCalendar.get(1);
        localCadastroLancamento6.anoVencimento = m;
        CadastroLancamento localCadastroLancamento7 = CadastroLancamento.this;
        int n = localCalendar.get(2);
        localCadastroLancamento7.mesVencimento = n;
        CadastroLancamento localCadastroLancamento8 = CadastroLancamento.this;
        int i1 = localCalendar.get(5);
        localCadastroLancamento8.diaVencimento = i1;
        CadastroLancamento.this.atualizarVencimento();
        Button localButton5 = (Button)findViewById(2131099754);
        View.OnClickListener local3 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            CadastroLancamento.this.setResult(0);
            CadastroLancamento.this.fecharJanelaBuscar();
          }
        };
        localButton5.setOnClickListener(local3);
        Button localButton6 = (Button)findViewById(2131099753);
        View.OnClickListener local4 = new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            CadastroLancamento.this.setResult(-1);
            CadastroLancamento.this.tipo_lista = "b";
            CadastroLancamento localCadastroLancamento = CadastroLancamento.this;
            String str = CadastroLancamento.this.tipo_lista;
            localCadastroLancamento.atualizarLista(str);
            CadastroLancamento.this.fecharJanelaBuscar();
          }
        };
        localButton6.setOnClickListener(local4);
      }
    };
    this.janelaBuscar = local3;
    this.janelaBuscar.setIcon(2130837507);
    this.janelaBuscar.setTitle(2131034196);
    this.janelaBuscar.setView(localView);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default: 
      localObject = null;
    }
    for (;;)
    {
      return localObject;
      DatePickerDialog.OnDateSetListener localOnDateSetListener1 = this.mDataVencimentoSetListener;
      int i = this.anoVencimento;
      int j = this.mesVencimento;
      int k = this.diaVencimento;
      CadastroLancamento localCadastroLancamento1 = this;
      localObject = new DatePickerDialog(localCadastroLancamento1, localOnDateSetListener1, i, j, k);
      continue;
      DatePickerDialog.OnDateSetListener localOnDateSetListener2 = this.mDataVencimentoSetListener1;
      int m = this.anoVencimento1;
      int n = this.mesVencimento1;
      int i1 = this.diaVencimento1;
      CadastroLancamento localCadastroLancamento2 = this;
      localObject = new DatePickerDialog(localCadastroLancamento2, localOnDateSetListener2, m, n, i1);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool = super.onCreateOptionsMenu(paramMenu);
    MenuItem localMenuItem1 = paramMenu.add(0, 1, 0, 2131034172).setIcon(2130837521);
    MenuItem localMenuItem2 = paramMenu.add(0, 4, 0, 2131034197).setIcon(2130837531);
    MenuItem localMenuItem3 = paramMenu.add(0, 3, 0, 2131034198).setIcon(2130837527);
    MenuItem localMenuItem4 = paramMenu.add(0, 2, 0, 2131034199).setIcon(2130837528);
    MenuItem localMenuItem5 = paramMenu.add(0, 6, 0, 2131034156).setIcon(2130837508);
    MenuItem localMenuItem6 = paramMenu.add(0, 5, 0, 2131034123).setIcon(2130837513);
    MenuItem localMenuItem7 = paramMenu.add(0, 7, 0, 2131034173).setIcon(2130837530);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    repositorio.fechar();
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    editarLancamento(paramInt);
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return true;
      Intent localIntent1 = new Intent(this, EditarLancamento.class);
      startActivityForResult(localIntent1, 1);
      continue;
      Intent localIntent2 = new Intent(this, ResumoLancamento.class);
      startActivityForResult(localIntent2, 1);
      continue;
      this.tipo_lista = "p";
      String str1 = this.tipo_lista;
      atualizarLista(str1);
      continue;
      this.tipo_lista = "t";
      String str2 = this.tipo_lista;
      atualizarLista(str2);
      continue;
      Intent localIntent3 = new Intent(this, Configuracao.class);
      startActivityForResult(localIntent3, 5);
      continue;
      this.janelaBuscar.show();
      continue;
      View localView = LayoutInflater.from(this).inflate(2130903060, null);
      AlertDialog local4 = new AlertDialog(this)
      {
        protected void onCreate(Bundle paramAnonymousBundle)
        {
          super.onCreate(paramAnonymousBundle);
          Button localButton = (Button)findViewById(2131099766);
          View.OnClickListener local1 = new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              CadastroLancamento.this.setResult(0);
              CadastroLancamento.this.fecharJanelaSobre();
            }
          };
          localButton.setOnClickListener(local1);
        }
      };
      this.janelaSobre = local4;
      this.janelaSobre.setIcon(2130837520);
      this.janelaSobre.setTitle(2131034190);
      this.janelaSobre.setView(localView);
      this.janelaSobre.show();
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.lancamento.CadastroLancamento
 * JD-Core Version:    0.7.0.1
 */