unit PresensiGuru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  TFPresensiGuru = class(TForm)
    panelUtama: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    dbLookUpPresensi: TDBLookupComboBox;
    btnBatalHadir: TBitBtn;
    btnHadir: TBitBtn;
    edNis: TEdit;
    procedure btnHadirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBatalHadirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPresensiGuru: TFPresensiGuru;

implementation

uses DataModule, ProfileGuru;

{$R *.dfm}

procedure TFPresensiGuru.btnHadirClick(Sender: TObject);
var
  nis, NIP, idMataPelajaran: string;
  currentDate, currentTime: string;
begin
  try
    if VarIsNull(dbLookUpPresensi.KeyValue) then
    begin
      ShowMessage('Silakan pilih mata pelajaran terlebih dahulu.');
      Exit;
    end;

    idMataPelajaran := dbLookUpPresensi.KeyValue;
    NIP := DM.zqGuru['NIP'];

    // Validasi input
    nis := edNis.Text;
    if nis = '' then
    begin
      ShowMessage('NIS tidak boleh kosong.');
      Exit;
    end;

    DM.zqCekSw.Close;
    DM.zqCekSw.SQL.Text :=
      'SELECT * FROM siswamatapelajaran WHERE NIS = :NIS AND IDMataPelajaran = :IDMataPelajaran';
    DM.zqCekSw.Params.ParamByName('NIS').AsString := nis;
    DM.zqCekSw.Params.ParamByName('IDMataPelajaran').AsString := idMataPelajaran;
    DM.zqCekSw.Open;

    if DM.zqCekSw.IsEmpty then
    begin
      ShowMessage('Data NIS dan Mata Pelajaran tidak ditemukan.');
      Exit;
    end;

    currentDate := FormatDateTime('yyyy-mm-dd', Now);
    currentTime := FormatDateTime('hh:nn:ss', Now);

    DM.zqHadirGr.Close;
    DM.zqHadirGr.SQL.Text :=
      'INSERT INTO kehadiran (NIS, IDMataPelajaran, Tanggal, Waktu) ' +
      'VALUES (:NIS, :IDMataPelajaran, :Tanggal, :Waktu)';
    DM.zqHadirGr.Params.ParamByName('NIS').AsString := nis;
    DM.zqHadirGr.Params.ParamByName('IDMataPelajaran').AsString := idMataPelajaran;
    DM.zqHadirGr.Params.ParamByName('Tanggal').AsString := currentDate;
    DM.zqHadirGr.Params.ParamByName('Waktu').AsString := currentTime;
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


    ShowMessage('Data kehadiran berhasil ditambahkan.');

    FProfileGuru.panelHeader.Enabled := True;
    FProfileGuru.panelProfile.Enabled := True;
    FProfileGuru.panelJadwal.Enabled := True;
    FProfileGuru.panelHadir.Enabled := True;
    FProfileGuru.Show;
    FPresensiGuru.Close;
  except
    on E: Exception do
      ShowMessage('Gagal menambahkan data kehadiran: ' + E.Message);
  end;
end;

procedure TFPresensiGuru.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FProfileGuru.panelHeader.Enabled := True;
  FProfileGuru.panelProfile.Enabled := True;
  FProfileGuru.panelJadwal.Enabled := True;
  FProfileGuru.panelHadir.Enabled := True;
  FProfileGuru.Show;
end;

procedure TFPresensiGuru.btnBatalHadirClick(Sender: TObject);
begin
  FProfileGuru.panelHeader.Enabled := True;
  FProfileGuru.panelProfile.Enabled := True;
  FProfileGuru.panelJadwal.Enabled := True;
  FProfileGuru.panelHadir.Enabled := True;
  FProfileGuru.Show;
  FPresensiGuru.Close
end;

end.
