unit ProfileGuru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, EDBImage, DBCtrls, Buttons, Grids, DBGrids,
  SMDBGrid, DB;

type
  TFProfileGuru = class(TForm)
    panelHeader: TPanel;
    Label1: TLabel;
    btnLogout: TBitBtn;
    EDBImage1: TEDBImage;
    panelProfile: TPanel;
    Label2: TLabel;
    dbGridProfile: TSMDBGrid;
    btnAccount: TBitBtn;
    btnEditProfile: TBitBtn;
    btnBatalProfile: TBitBtn;
    btnSimpanProfile: TBitBtn;
    panelJadwal: TPanel;
    Label3: TLabel;
    dgGridJadwal: TSMDBGrid;
    btnJadwal: TBitBtn;
    PanelHadir: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    btnPrintHadir: TBitBtn;
    btnTmbhHadir: TBitBtn;
    dbGridHadir: TSMDBGrid;
    dbLookUpHadir: TDBLookupComboBox;
    btnHapus: TBitBtn;
    procedure btnLogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditProfileClick(Sender: TObject);
    procedure btnSimpanProfileClick(Sender: TObject);
    procedure btnBatalProfileClick(Sender: TObject);
    procedure btnAccountClick(Sender: TObject);
    procedure dbLookUpHadirCloseUp(Sender: TObject);
    procedure btnTmbhHadirClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnJadwalClick(Sender: TObject);
    procedure btnPrintHadirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProfileGuru: TFProfileGuru;

implementation

uses DataModule, Login, Account, PresensiGuru;

{$R *.dfm}

procedure TFProfileGuru.btnLogoutClick(Sender: TObject);
begin
  FLogin.edUsername.Text := '';
  FLogin.edPassword.Text := '';

  DM.zqGuru.Close;
  DM.zqGuru.SQL.Clear;
  DM.zqJadwalGr.Close;
  DM.zqJadwalGr.SQL.Clear;
  DM.zqHadirGr.Close;
  DM.zqHadirGr.SQL.Clear;
  DM.zqEdAccount.Close;
  DM.zqEdAccount.SQL.Clear;
  DM.zqKelas.Close;
  DM.zqKelas.SQL.Clear;

  FProfileGuru.Hide;
  FLogin.Show;
end;

procedure TFProfileGuru.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FLogin.edUsername.Text := '';
  FLogin.edPassword.Text := '';

  DM.zqGuru.Close;
  DM.zqGuru.SQL.Clear;
  DM.zqJadwalGr.Close;
  DM.zqJadwalGr.SQL.Clear;
  DM.zqHadirGr.Close;
  DM.zqHadirGr.SQL.Clear;
  DM.zqKelas.Close;
  DM.zqKelas.SQL.Clear;
  
  FEdAccount.Close;
  FLogin.Show;
end;

procedure TFProfileGuru.btnEditProfileClick(Sender: TObject);
var
  i: Integer;
begin
  dbGridProfile.ReadOnly := False;
  dbGridProfile.Options := dbGridProfile.Options + [dgEditing];

  for i := 0 to dbGridProfile.Columns.Count - 1 do
  begin
    if dbGridProfile.Columns[i].FieldName = 'NIP' then
      dbGridProfile.Columns[i].ReadOnly := True
    else
      dbGridProfile.Columns[i].ReadOnly := False;
  end;
  
  if not (DM.zqGuru.State in [dsEdit, dsInsert]) then
    DM.zqGuru.Edit;

  btnSimpanProfile.Enabled := True;
  btnSimpanProfile.Visible := True;
  btnBatalProfile.Enabled := True;
  btnBatalProfile.Visible := True;
  btnEditProfile.Enabled := False;
  panelJadwal.Enabled := False;
  panelHadir.Enabled := False;
end;

procedure TFProfileGuru.btnSimpanProfileClick(Sender: TObject);
begin
  try
    if DM.zqGuru.Modified then
      begin
        if DM.zqGuru.State in [dsEdit, dsInsert] then
          DM.zqGuru.Post;

        ShowMessage('Perubahan berhasil disimpan.');
      end
    else
      begin
        ShowMessage('Tidak ada perubahan yang dilakukan.');
      end;

    dbGridProfile.ReadOnly := True;
    dbGridProfile.Options := dbGridProfile.Options - [dgEditing];

    btnSimpanProfile.Enabled := False;
    btnSimpanProfile.Visible := False;
    btnBatalProfile.Enabled := False;
    btnBatalProfile.Visible := False;
    btnEditProfile.Enabled := True;
    panelJadwal.Enabled := True;
    panelHadir.Enabled := True;
  except
    on E: Exception do
      ShowMessage('Gagal menyimpan perubahan: ' + E.Message);
  end;
end;

procedure TFProfileGuru.btnBatalProfileClick(Sender: TObject);
begin
  if DM.zqGuru.State in [dsEdit, dsInsert] then
    DM.zqGuru.Cancel;

  dbGridProfile.ReadOnly := True;
  dbGridProfile.Options := dbGridProfile.Options - [dgEditing];

  btnSimpanProfile.Enabled := False;
  btnSimpanProfile.Visible := False;
  btnBatalProfile.Enabled := False;
  btnBatalProfile.Visible := False;
  btnEditProfile.Enabled := True;
  panelJadwal.Enabled := True;
  panelHadir.Enabled := True;

  ShowMessage('Perubahan dibatalkan.');
end;

procedure TFProfileGuru.btnAccountClick(Sender: TObject);
begin
  panelHeader.Enabled := False;
  panelProfile.Enabled := False;
  panelJadwal.Enabled := False;
  panelHadir.Enabled := False;
  
  FEdAccount.panelUtama.Enabled := True;
  FEdAccount.Show;
end;

procedure TFProfileGuru.dbLookUpHadirCloseUp(Sender: TObject);
var
  selectedKelas: string;
begin
  if VarIsNull(dbLookUpHadir.KeyValue) then
    begin
      ShowMessage('Silakan pilih kelas.');
      dbLookUpHadir.KeyValue := Null;
      Exit;
    end
  else
    begin
      selectedKelas := dbLookUpHadir.KeyValue;

      DM.zqHadirGr.Close;
      DM.zqHadirGr.SQL.Text :=
        'SELECT '+
        '    mp.IDMataPelajaran AS IDKelas,'+
        '    mp.Nama AS NamaKelas,'+
        '    s.NIS,'+
        '    s.Nama AS NamaSiswa,'+
        '    k.Tanggal,'+
        '    k.Waktu,'+
        '    k.IDKehadiran '+
        'FROM '+
        '    kehadiran k '+
        'JOIN '+
        '    matapelajaran mp ON k.IDMataPelajaran = mp.IDMataPelajaran '+
        'JOIN '+
        '    siswa s ON k.NIS = s.NIS '+
        'WHERE '+
        '    mp.NIP = :NIP AND mp.IDMataPelajaran = :IDKelas '+
        'ORDER BY k.Tanggal DESC, k.Waktu DESC';
      DM.zqHadirGr.Params.ParamByName('NIP').AsString := DM.zqGuru['NIP'];
      DM.zqHadirGr.Params.ParamByName('IDKelas').AsString := selectedKelas;
      DM.zqHadirGr.Open;
    end;
end;

procedure TFProfileGuru.btnTmbhHadirClick(Sender: TObject);
begin
  panelHeader.Enabled := False;
  panelProfile.Enabled := False;
  panelJadwal.Enabled := False;
  panelHadir.Enabled := False;
  FPresensiGuru.edNis.Text := '';
  FPresensiGuru.dbLookUpPresensi.KeyValue := Null;

  FProfileGuru.Hide;
  FPresensiGuru.Show;
end;

procedure TFProfileGuru.btnHapusClick(Sender: TObject);
var
  NIP: string;
  idKehadiran, confirmResult: Integer;
begin
  NIP := DM.zqGuru['NIP'];
  if DM.zqHadirGr.IsEmpty then
  begin
    ShowMessage('Tidak ada data yang dipilih untuk dihapus.');
    Exit;
  end;

  idKehadiran := DM.zqHadirGr.FieldByName('IDKehadiran').AsInteger;

  confirmResult := MessageDlg('Apakah Anda yakin ingin menghapus data ini?', mtConfirmation, [mbOK, mbCancel], 0);

  if confirmResult = mrOk then
    begin
      try
        // Hapus data berdasarkan IDKehadiran
        DM.zqHadirGr.Close;
        DM.zqHadirGr.SQL.Text := 'DELETE FROM kehadiran WHERE IDKehadiran = :idKehadiran';
        DM.zqHadirGr.Params.ParamByName('idKehadiran').AsInteger := idKehadiran;
        DM.zqHadirGr.ExecSQL;

        DM.zqHadirGr.Close;
        DM.zqHadirGr.SQL.Text :=
            'SELECT '+
            '    mp.IDMataPelajaran AS IDKelas,'+
            '    mp.Nama AS NamaKelas,'+
            '    s.NIS,'+
            '    s.Nama AS NamaSiswa,'+
            '    k.Tanggal,'+
            '    k.Waktu,'+
            '    k.IDKehadiran '+
            'FROM '+
            '    kehadiran k '+
            'JOIN '+
            '    matapelajaran mp ON k.IDMataPelajaran = mp.IDMataPelajaran '+
            'JOIN '+
            '    siswa s ON k.NIS = s.NIS '+
            'WHERE '+
            '    mp.NIP = :NIP '+
            'ORDER BY k.Tanggal DESC, k.Waktu DESC';
        DM.zqHadirGr.Params.ParamByName('NIP').AsString := NIP;
        DM.zqHadirGr.Open;

        ShowMessage('Data berhasil dihapus.');
      except
        on E: Exception do
          ShowMessage('Gagal menghapus data: ' + E.Message);
      end;
    end
  else
    begin
      ShowMessage('Penghapusan dibatalkan.');
    end;
end;

procedure TFProfileGuru.btnJadwalClick(Sender: TObject);
begin
  DM.rptJadwalGr.LoadFromFile('JadwalGr.fr3');
  DM.rptJadwalGr.ShowReport();
end;

procedure TFProfileGuru.btnPrintHadirClick(Sender: TObject);
begin
  DM.rptHadirGr.LoadFromFile('HadirGr.fr3');
  DM.rptHadirGr.ShowReport();
end;

end.
