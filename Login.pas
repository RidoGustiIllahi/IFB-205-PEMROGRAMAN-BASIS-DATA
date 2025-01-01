unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;

    Panel1: TPanel;

    cbLiatpw: TCheckBox;

    edUsername: TEdit;
    edPassword: TEdit;

    btnLogin: TBitBtn;
    btnKeluar: TBitBtn;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation
  uses DataModule, ProfileSiswa, ProfileGuru;

{$R *.dfm}

procedure TFLogin.btnKeluarClick(Sender: TObject);
begin
  FLogin.Close;
end;

procedure TFLogin.btnLoginClick(Sender: TObject);
var
  i, z : Integer;
  role, username, password, NIS, NIP, Nama: string;
begin
  z := 0;
  NIS := '';
  NIP := '';
  Nama := '';

  DM.zqAccount.First;
  for i := 1 to DM.zqAccount.RecordCount do
    begin
      role := DM.zqAccount['role'];
      username := DM.zqAccount['username'];
      password := DM.zqAccount['password'];

      if ((edUsername.Text = username) and (edPassword.Text = password) and (role = 'Siswa'))then
        begin
          z := 1;

          DM.zqSiswa.Close;
          DM.zqSiswa.SQL.Text := 'SELECT * FROM siswa WHERE username = :username';
          DM.zqSiswa.Params.ParamByName('username').AsString := username;
          DM.zqSiswa.Open;

          NIS := DM.zqSiswa['NIS'];
          Nama := DM.zqSiswa['Nama'];

          DM.zqJadwalSw.Close;
          DM.zqJadwalSw.SQL.Text :=
              'SELECT ' +
              '  m.IDMataPelajaran, m.Nama AS NamaKelas, g.Nama AS NamaGuru, ' +
              '  r.IDRuangan AS NomorRuangan, r.Nama AS NamaRuangan, ' +
              '  h.Hari AS NamaHari, j.Waktu ' +
              'FROM siswamatapelajaran smp ' +
              'JOIN matapelajaran m ON smp.IDMataPelajaran = m.IDMataPelajaran ' +
              'JOIN guru g ON m.NIP = g.NIP ' +
              'JOIN jadwal j ON m.IDMataPelajaran = j.IDMatapelajaran ' +
              'JOIN hari h ON j.IDHari = h.IDHari ' +
              'JOIN ruangan r ON j.IDRuangan = r.IDRuangan ' +
              'WHERE smp.NIS = :NIS ' +
              'ORDER BY m.IDMataPelajaran';
          DM.zqJadwalSw.Params.ParamByName('NIS').AsString := NIS;
          DM.zqJadwalSw.Open;

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
              '    k.NIS = :NIS';
          DM.zqHadirSw.Params.ParamByName('NIS').AsString := NIS;
          DM.zqHadirSw.Open;
          Break;
        end
      else if ((edUsername.Text = username) and (edPassword.Text = password) and (role = 'Guru'))then
        begin
          z := 2;

          DM.zqGuru.Close;
          DM.zqGuru.SQL.Text := 'SELECT * FROM guru WHERE username = :username';
          DM.zqGuru.Params.ParamByName('username').AsString := username;
          DM.zqGuru.Open;

          nip := DM.zqGuru['NIP'];
          Nama := DM.zqGuru['Nama'];

          DM.zqJadwalGr.Close;
          DM.zqJadwalGr.SQL.Text :=
              'SELECT ' +
              '  m.IDMataPelajaran, m.Nama AS NamaKelas, g.Nama AS NamaGuru, ' +
              '  r.IDRuangan AS NomorRuangan, r.Nama AS NamaRuangan, ' +
              '  h.Hari AS NamaHari, j.Waktu ' +
              'FROM matapelajaran m ' +
              'JOIN guru g ON m.NIP = g.NIP ' +
              'JOIN jadwal j ON m.IDMataPelajaran = j.IDMatapelajaran ' +
              'JOIN hari h ON j.IDHari = h.IDHari ' +
              'JOIN ruangan r ON j.IDRuangan = r.IDRuangan ' +
              'WHERE g.NIP = :NIP ' +
              'ORDER BY m.IDMataPelajaran';
          DM.zqJadwalGr.Params.ParamByName('NIP').AsString := NIP;
          DM.zqJadwalGr.Open;

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
              '    mp.NIP = :NIP';
          DM.zqHadirGr.Params.ParamByName('NIP').AsString := NIP;
          DM.zqHadirGr.Open;
          Break;
        end
      else if ((edUsername.Text = username) and (edPassword.Text = password) and (role = 'Admin'))then
        begin
          z := 3;
        end
      else
        begin
          DM.zqAccount.Next;
        end;
    end;
    
    if z = 1 then
      begin
        MessageDlg('Selamat Datang Siswa ' + nama, mtInformation, [mbOK], 0);
        FProfileSiswa.Show;
        FLogin.Hide;
      end
    else if z = 2 then
      begin
        MessageDlg('Selamat Datang Guru ' + nama, mtInformation, [mbOK], 0);
        FProfileGuru.Show;
        FLogin.Hide;
      end
    else
      begin
        MessageDlg('Username atau password salah.', mtError, [mbOK], 0);
        end;
end;

end.
