package com.controleFinanceiro.lancamento;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.Spinner;
import android.widget.TextView;
import com.controleFinanceiro.categoria.Categoria;
import com.controleFinanceiro.categoria.RepositorioCategoria;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

public class ResumoCategoria
  extends Activity
{
  protected static final int DIALOG_INTERVALO_FINAL = 1;
  protected static final int DIALOG_INTERVALO_INICIAL;
  public static RepositorioLancamento repositorio;
  private int anoIntervaloFinal;
  private int anoIntervaloInicial;
  private Button btnBuscarCategoria;
  private Button btnResumoCategoriaIntervaloFinal;
  private Button btnResumoCategoriaIntervaloInicial;
  private Spinner campoLAN_IN_CATEGORIA;
  private List<Integer> codigoCategoria;
  private List<String> comboCategoria;
  private String dataIntervaloFinalBD;
  private String dataIntervaloInicialBD;
  private int diaIntervaloFinal;
  private int diaIntervaloInicial;
  private List<Categoria> listaCategoria;
  private DatePickerDialog.OnDateSetListener mDataIntervaloFinalSetListener;
  private DatePickerDialog.OnDateSetListener mDataIntervaloInicialSetListener;
  private int mesIntervaloFinal;
  private int mesIntervaloInicial;
  private View.OnClickListener onClickBuscarCategoria;
  private View.OnClickListener onClickIntervaloFinal;
  private View.OnClickListener onClickIntervaloInicial;
  private TextView txtTotalCategoria;
  
  public ResumoCategoria()
  {
    ArrayList localArrayList = new ArrayList();
    this.codigoCategoria = localArrayList;
    View.OnClickListener local1 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        NumberFormat localNumberFormat = NumberFormat.getInstance(new Locale("pt", "BR"));
        localNumberFormat.setMinimumFractionDigits(2);
        List localList = ResumoCategoria.this.codigoCategoria;
        int i = ResumoCategoria.this.campoLAN_IN_CATEGORIA.getSelectedItemPosition();
        int j = ((Integer)localList.get(i)).intValue();
        RepositorioLancamento localRepositorioLancamento = ResumoCategoria.repositorio;
        String str1 = ResumoCategoria.this.dataIntervaloInicialBD;
        String str2 = ResumoCategoria.this.dataIntervaloFinalBD;
        float f = localRepositorioLancamento.calculaTotalCategoria(j, str1, str2);
        TextView localTextView = ResumoCategoria.this.txtTotalCategoria;
        double d = f;
        String str3 = localNumberFormat.format(d);
        localTextView.setText(str3);
      }
    };
    this.onClickBuscarCategoria = local1;
    View.OnClickListener local2 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ResumoCategoria.this.showDialog(0);
      }
    };
    this.onClickIntervaloInicial = local2;
    View.OnClickListener local3 = new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ResumoCategoria.this.showDialog(1);
      }
    };
    this.onClickIntervaloFinal = local3;
    DatePickerDialog.OnDateSetListener local4 = new DatePickerDialog.OnDateSetListener()
    {
      public void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        ResumoCategoria.this.anoIntervaloInicial = paramAnonymousInt1;
        ResumoCategoria.this.mesIntervaloInicial = paramAnonymousInt2;
        ResumoCategoria.this.diaIntervaloInicial = paramAnonymousInt3;
        ResumoCategoria.this.atualizarIntervaloInicial();
      }
    };
    this.mDataIntervaloInicialSetListener = local4;
    DatePickerDialog.OnDateSetListener local5 = new DatePickerDialog.OnDateSetListener()
    {
      public void onDateSet(DatePicker paramAnonymousDatePicker, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        ResumoCategoria.this.anoIntervaloFinal = paramAnonymousInt1;
        ResumoCategoria.this.mesIntervaloFinal = paramAnonymousInt2;
        ResumoCategoria.this.diaIntervaloFinal = paramAnonymousInt3;
        ResumoCategoria.this.atualizarIntervaloFinal();
      }
    };
    this.mDataIntervaloFinalSetListener = local5;
  }
  
  private void atualizarIntervaloFinal()
  {
    Button localButton = this.btnResumoCategoriaIntervaloFinal;
    StringBuilder localStringBuilder1 = new StringBuilder();
    int i = this.diaIntervaloFinal;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(i).append("/");
    int j = this.mesIntervaloFinal + 1;
    StringBuilder localStringBuilder3 = localStringBuilder2.append(j).append("/");
    int k = this.anoIntervaloFinal;
    StringBuilder localStringBuilder4 = localStringBuilder3.append(k).append("");
    localButton.setText(localStringBuilder4);
    String str1 = String.valueOf(this.anoIntervaloFinal);
    StringBuilder localStringBuilder5 = new StringBuilder(str1).append("-");
    int m = this.mesIntervaloFinal + 1;
    String str2 = verificaDigitos(m);
    StringBuilder localStringBuilder6 = localStringBuilder5.append(str2).append("-");
    int n = this.diaIntervaloFinal;
    String str3 = verificaDigitos(n);
    String str4 = str3;
    this.dataIntervaloFinalBD = str4;
  }
  
  private void atualizarIntervaloInicial()
  {
    Button localButton = this.btnResumoCategoriaIntervaloInicial;
    StringBuilder localStringBuilder1 = new StringBuilder();
    int i = this.diaIntervaloInicial;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(i).append("/");
    int j = this.mesIntervaloInicial + 1;
    StringBuilder localStringBuilder3 = localStringBuilder2.append(j).append("/");
    int k = this.anoIntervaloInicial;
    StringBuilder localStringBuilder4 = localStringBuilder3.append(k).append("");
    localButton.setText(localStringBuilder4);
    String str1 = String.valueOf(this.anoIntervaloInicial);
    StringBuilder localStringBuilder5 = new StringBuilder(str1).append("-");
    int m = this.mesIntervaloInicial + 1;
    String str2 = verificaDigitos(m);
    StringBuilder localStringBuilder6 = localStringBuilder5.append(str2).append("-");
    int n = this.diaIntervaloInicial;
    String str3 = verificaDigitos(n);
    String str4 = str3;
    this.dataIntervaloInicialBD = str4;
  }
  
  private List<String> fillListaCategoria(List<Categoria> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    int j = paramList.size() + 1;
    if (i >= j) {
      return localArrayList;
    }
    if (i == 0)
    {
      String str1 = getString(2131034210);
      boolean bool1 = localArrayList.add(str1);
      List localList1 = this.codigoCategoria;
      Integer localInteger1 = Integer.valueOf(0);
      boolean bool2 = localList1.add(localInteger1);
    }
    for (;;)
    {
      i += 1;
      break;
      int k = i - 1;
      String str2 = ((Categoria)paramList.get(k)).CAT_ST_DESCRICAO;
      boolean bool3 = localArrayList.add(str2);
      List localList2 = this.codigoCategoria;
      int m = i - 1;
      Integer localInteger2 = Integer.valueOf(((Categoria)paramList.get(m)).id);
      boolean bool4 = localList2.add(localInteger2);
    }
  }
  
  private void initUI()
  {
    Calendar localCalendar = Calendar.getInstance();
    int i = localCalendar.get(1);
    this.anoIntervaloFinal = i;
    int j = localCalendar.get(2);
    this.mesIntervaloFinal = j;
    int k = localCalendar.get(5);
    this.diaIntervaloFinal = k;
    atualizarIntervaloFinal();
    localCalendar.add(2, -1);
    int m = localCalendar.get(1);
    this.anoIntervaloInicial = m;
    int n = localCalendar.get(2);
    this.mesIntervaloInicial = n;
    int i1 = localCalendar.get(5);
    this.diaIntervaloInicial = i1;
    atualizarIntervaloInicial();
  }
  
  private String verificaDigitos(int paramInt)
  {
    String str1 = String.valueOf(paramInt);
    if (paramInt < 10)
    {
      StringBuilder localStringBuilder = new StringBuilder("0");
      String str2 = String.valueOf(paramInt);
      str1 = str2;
    }
    return str1;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903049);
    repositorio = new RepositorioLancamentoScript(this);
    Spinner localSpinner = (Spinner)findViewById(2131099709);
    this.campoLAN_IN_CATEGORIA = localSpinner;
    List localList1 = new RepositorioCategoria(this).carregaComboCategoria();
    this.listaCategoria = localList1;
    List localList2 = this.listaCategoria;
    List localList3 = fillListaCategoria(localList2);
    this.comboCategoria = localList3;
    List localList4 = this.comboCategoria;
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 17367048, localList4);
    localArrayAdapter.setDropDownViewResource(17367049);
    this.campoLAN_IN_CATEGORIA.setAdapter(localArrayAdapter);
    TextView localTextView = (TextView)findViewById(2131099714);
    this.txtTotalCategoria = localTextView;
    Button localButton1 = (Button)findViewById(2131099712);
    this.btnBuscarCategoria = localButton1;
    Button localButton2 = this.btnBuscarCategoria;
    View.OnClickListener localOnClickListener1 = this.onClickBuscarCategoria;
    localButton2.setOnClickListener(localOnClickListener1);
    Button localButton3 = (Button)findViewById(2131099710);
    this.btnResumoCategoriaIntervaloInicial = localButton3;
    Button localButton4 = this.btnResumoCategoriaIntervaloInicial;
    View.OnClickListener localOnClickListener2 = this.onClickIntervaloInicial;
    localButton4.setOnClickListener(localOnClickListener2);
    Button localButton5 = (Button)findViewById(2131099711);
    this.btnResumoCategoriaIntervaloFinal = localButton5;
    Button localButton6 = this.btnResumoCategoriaIntervaloFinal;
    View.OnClickListener localOnClickListener3 = this.onClickIntervaloFinal;
    localButton6.setOnClickListener(localOnClickListener3);
    initUI();
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
      DatePickerDialog.OnDateSetListener localOnDateSetListener1 = this.mDataIntervaloInicialSetListener;
      int i = this.anoIntervaloInicial;
      int j = this.mesIntervaloInicial;
      int k = this.diaIntervaloInicial;
      ResumoCategoria localResumoCategoria1 = this;
      localObject = new DatePickerDialog(localResumoCategoria1, localOnDateSetListener1, i, j, k);
      continue;
      DatePickerDialog.OnDateSetListener localOnDateSetListener2 = this.mDataIntervaloFinalSetListener;
      int m = this.anoIntervaloFinal;
      int n = this.mesIntervaloFinal;
      int i1 = this.diaIntervaloFinal;
      ResumoCategoria localResumoCategoria2 = this;
      localObject = new DatePickerDialog(localResumoCategoria2, localOnDateSetListener2, m, n, i1);
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.lancamento.ResumoCategoria
 * JD-Core Version:    0.7.0.1
 */