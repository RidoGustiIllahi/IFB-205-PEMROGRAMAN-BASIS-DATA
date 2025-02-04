unit ProfileSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SMDBCtrl, Buttons, Grids, DBGrids, SMDBGrid,
  DBCtrls, EDBImage, DB;

type
  TFProfileSiswa = class(TForm)
    panelJadwal: TPanel;
    Label3: TLabel;
    dgGridJadwal: TSMDBGrid;
    btnJadwal: TBitBtn;
    panelHeader: TPanel;
    Label1: TLabel;
    btnLogout: TBitBtn;
    EDBImage1: TEDBImage;
    panelProfile: TPanel;
    dbGridProfile: TSMDBGrid;
    Label2: TLabel;
    btnAccount: TBitBtn;
    btnBatalProfile: TBitBtn;
    btnSimpanProfile: TBitBtn;
    btnEditProfile: TBitBtn;
    panelHadir: TPanel;
    Label4: TLabel;
    btnPrintHadir: TBitBtn;
    btnTmbhHadir: TBitBtn;
    dbGridHadir: TSMDBGrid;
    Label5: TLabel;
    dbLookUpHadir: TDBLookupComboBox;
    procedure btnLogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditProfileClick(Sender: TObject);
    procedure btnSimpanProfileClick(Sender: TObject);
    procedure btnBatalProfileClick(Sender: TObject);
    procedure btnAccountClick(Sender: TObject);
    procedure dbLookUpHadirCloseUp(Sender: TObject);
    procedure btnTmbhHadirClick(Sender: TObject);
    procedure btnJadwalClick(Sender: TObject);
    procedure btnPrintHadirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProfileSiswa: TFProfileSiswa;

implementation

uses DataModule, Login, Account;

{$R *.dfm}

procedure TFProfileSiswa.btnLogoutClick(Sender: TObject);
begin
  FLogin.edUsername.Text := '';
  FLogin.edPassword.Text := '';

  DM.zqSiswa.Close;
  DM.zqSiswa.SQL.Clear;
  DM.zqJadwalSw.Close;
  DM.zqJadwalSw.SQL.Clear;
  DM.zqHadirSw.Close;
  DM.zqHadirSw.SQL.Clear;
  DM.zqEdAccount.Close;
  DM.zqEdAccount.SQL.Clear;
  DM.zqKelas.Close;
  DM.zqKelas.SQL.Clear;

  FProfileSiswa.Hide;
  FLogin.Show;
end;

procedure TFProfileSiswa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FLogin.edUsername.Text := '';
  FLogin.edPassword.Text := '';

  DM.zqSiswa.Close;
  DM.zqSiswa.SQL.Clear;
  DM.zqJadwalSw.Close;
  DM.zqJadwalSw.SQL.Clear;
  DM.zqHadirSw.Close;
  DM.zqHadirSw.SQL.Clear;
  DM.zqKelas.Close;
  DM.zqKelas.SQL.Clear;

  FEdAccount.Close;
  FLogin.Show;
end;

procedure TFProfileSiswa.btnEditProfileClick(Sender: TObject);
var
  i: Integer;
begin
  dbGridProfile.ReadOnly := False;
  dbGridProfile.Options := dbGridProfile.Options + [dgEditing];

  for i := 0 to dbGridProfile.Columns.Count - 1 do
  begin
    if dbGridProfile.Columns[i].FieldName = 'NIS' then
      dbGridProfile.Columns[i].ReadOnly := True
    else
      dbGridProfile.Columns[i].ReadOnly := False;
  end;

  if not (DM.zqSiswa.State in [dsEdit, dsInsert]) then
    DM.zqSiswa.Edit;

  btnSimpanProfile.Enabled := True;
  btnSimpanProfile.Visible := True;
  btnBatalProfile.Enabled := True;
  btnBatalProfile.Visible := True;
  btnEditProfile.Enabled := False;
  panelJadwal.Enabled := False;
  panelHadir.Enabled := False;
end;

procedure TFProfileSiswa.btnSimpanProfileClick(Sender: TObject);
begin
  try
    if DM.zqSiswa.Modified then
      begin
        if DM.zqSiswa.State in [dsEdit, dsInsert] then
          DM.zqSiswa.Post;

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

procedure TFProfileSiswa.btnBatalProfileClick(Sender: TObject);
begin
  if DM.zqSiswa.State in [dsEdit, dsInsert] then
    DM.zqSiswa.Cancel;

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

procedure TFProfileSiswa.btnAccountClick(Sender: TObject);
begin
  panelHeader.Enabled := False;
  panelProfile.Enabled := False;
  panelJadwal.Enabled := False;
  panelHadir.Enabled := False;
  
  FEdAccount.panelUtama.Enabled := True;
  FEdAccount.Show;
end;

procedure TFProfileSiswa.dbLookUpHadirCloseUp(Sender: TObject);
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

      DM.zqHadirSw.Close;
      DM.zqHadirSw.SQL.Text :=
        'SELECT '+
        '    mp.IDMataPelajaran AS IDKelas,'+
        '    mp.Nama AS NamaKelas,'+
        '    k.Tanggal,'+
        '    k.Waktu '+
        'FROM '+
        '    kehadiran k '+
        'JOIN '+
        '    matapelajaran mp ON k.IDMataPelajaran = mp.IDMataPelajaran '+
        'WHERE '+
        '    k.NIS = :NIS AND mp.IDMataPelajaran = :IDKelas ' +
        'ORDER BY k.Tanggal DESC, k.Waktu DESC';
      DM.zqHadirSw.Params.ParamByName('NIS').AsString := DM.zqSiswa['NIS'];
      DM.zqHadirSw.Params.ParamByName('IDKelas').AsString := selectedKelas;
      DM.zqHadirSw.Open;
    end;
end;

procedure TFProfileSiswa.btnTmbhHadirClick(Sender: TObject);
var
  nis, idMataPelajaran: string;
  currentDate, currentTime: string;
begin
  try
    if VarIsNull(dbLookUpHadir.KeyValue) then
    begin
      ShowMessage('Silakan pilih kelas terlebih dahulu.');
      Exit;
    end;

    nis := DM.zqSiswa['NIS'];
    idMataPelajaran := dbLookUpHadir.KeyValue;
    currentDate := FormatDateTime('yyyy-mm-dd', Now);
    currentTime := FormatDateTime('hh:nn:ss', Now);

    DM.zqHadirSw.Close;
    DM.zqHadirSw.SQL.Text :=
      'INSERT INTO kehadiran (NIS, IDMataPelajaran, Tanggal, Waktu) ' +
      'VALUES (:NIS, :IDMataPelajaran, :Tanggal, :Waktu)';
    DM.zqHadirSw.Params.ParamByName('NIS').AsString := nis;
    DM.zqHadirSw.Params.ParamByName('IDMataPelajaran').AsString := idMataPelajaran;
    DM.zqHadirSw.Params.ParamByName('Tanggal').AsString := currentDate;
    DM.zqHadirSw.Params.ParamByName('Waktu').AsString := currentTime;
    DM.zqHadirSw.ExecSQL;

    DM.zqHadirSw.SQL.Text :=
      'SELECT ' +
      '    mp.IDMataPelajaran AS IDKelas, ' +
      '    mp.Nama AS NamaKelas, ' +
      '    k.Tanggal, ' +
      '    k.Waktu ' +
      'FROM kehadiran k ' +
      'JOIN matapelajaran mp ON k.IDMataPelajaran = mp.IDMataPelajaran ' +
      'WHERE k.NIS = :NIS AND mp.IDMataPelajaran = :IDKelas';
    DM.zqHadirSw.Params.ParamByName('NIS').AsString := nis;
    DM.zqHadirSw.Params.ParamByName('IDKelas').AsString := idMataPelajaran;
    DM.zqHadirSw.Open;

    ShowMessage('Data kehadiran berhasil ditambahkan.');
  except
    on E: Exception do
    begin
      ShowMessage('Gagal menambahkan data kehadiran: ' + E.Message);
    end;
  end;
end;

procedure TFProfileSiswa.btnJadwalClick(Sender: TObject);
begin
  DM.rptJadwalSw.LoadFromFile('JadwalSw.fr3');
  DM.rptJadwalSw.ShowReport();
end;

procedure TFProfileSiswa.btnPrintHadirClick(Sender: TObject);
begin
  DM.rptHadirSw.LoadFromFile('HadirSw.fr3');
  DM.rptHadirSw.ShowReport();
end;

end.
