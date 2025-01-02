unit Account;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB;

type
  TFEdAccount = class(TForm)
    panelUtama: TPanel;
    Label1: TLabel;
    lblNama: TLabel;
    edUsername: TDBEdit;
    Label3: TLabel;
    edPassword: TDBEdit;
    Label4: TLabel;
    btnSimpan: TBitBtn;
    btnBatal: TBitBtn;
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEdAccount: TFEdAccount;

implementation
uses  DataModule, ProfileSiswa, ProfileGuru;

{$R *.dfm}

procedure TFEdAccount.btnBatalClick(Sender: TObject);
begin
  if DM.zqEdAccount['role'] = 'Siswa' then
    begin
      FProfileSiswa.panelHeader.Enabled := True;
      FProfileSiswa.panelProfile.Enabled := True;
      FProfileSiswa.panelJadwal.Enabled := True;
      FProfileSiswa.panelHadir.Enabled := True;

      if DM.zqEdAccount.State in [dsEdit, dsInsert] then
        DM.zqEdAccount.Cancel;
      panelUtama.Enabled := False;
      FEdAccount.Close;
    end
  else if DM.zqEdAccount['role'] = 'Guru' then
    begin
      FProfileGuru.panelHeader.Enabled := True;
      FProfileGuru.panelProfile.Enabled := True;
      FProfileGuru.panelJadwal.Enabled := True;
      FProfileGuru.panelHadir.Enabled := True;

      if DM.zqEdAccount.State in [dsEdit, dsInsert] then
        DM.zqEdAccount.Cancel;
      panelUtama.Enabled := False;
      FEdAccount.Close;
    end
  else
    begin
      panelUtama.Enabled := False;
      FEdAccount.Close;
    end;
end;

procedure TFEdAccount.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.zqEdAccount['role'] = 'Siswa' then
    begin
      FProfileSiswa.panelHeader.Enabled := True;
      FProfileSiswa.panelProfile.Enabled := True;
      FProfileSiswa.panelJadwal.Enabled := True;
      FProfileSiswa.panelHadir.Enabled := True;

      if DM.zqEdAccount.State in [dsEdit, dsInsert] then
        DM.zqEdAccount.Cancel;
      panelUtama.Enabled := False;
    end
  else if DM.zqEdAccount['role'] = 'Guru' then
    begin
      FProfileGuru.panelHeader.Enabled := True;
      FProfileGuru.panelProfile.Enabled := True;
      FProfileGuru.panelJadwal.Enabled := True;
      FProfileGuru.panelHadir.Enabled := True;

      if DM.zqEdAccount.State in [dsEdit, dsInsert] then
        DM.zqEdAccount.Cancel;
      panelUtama.Enabled := False;
    end
  else
    begin
      panelUtama.Enabled := False;
    end;
end;

procedure TFEdAccount.btnSimpanClick(Sender: TObject);
begin
  try
    if DM.zqEdAccount.Modified then
      begin
        if DM.zqEdAccount.State in [dsEdit, dsInsert] then
          DM.zqEdAccount.Post;

        ShowMessage('Account dirubah.');
      end
    else
      begin
        ShowMessage('Tidak ada perubahan yang dilakukan.');
      end;

    if DM.zqEdAccount['role'] = 'Siswa' then
      begin
        FProfileSiswa.panelHeader.Enabled := True;
        FProfileSiswa.panelProfile.Enabled := True;
        FProfileSiswa.panelJadwal.Enabled := True;
        FProfileSiswa.panelHadir.Enabled := True;
        panelUtama.Enabled := False;

        DM.zqSiswa.Close;
        DM.zqSiswa.SQL.Text := 'SELECT * FROM siswa WHERE username = :username';
        DM.zqSiswa.Params.ParamByName('username').AsString := DM.zqEdAccount['username'];
        DM.zqSiswa.Open;

        FEdAccount.Close;
      end
    else if DM.zqEdAccount['role'] = 'Guru' then
      begin
        FProfileGuru.panelHeader.Enabled := True;
        FProfileGuru.panelProfile.Enabled := True;
        FProfileGuru.panelJadwal.Enabled := True;
        FProfileGuru.panelHadir.Enabled := True;
        panelUtama.Enabled := False;

        DM.zqGuru.Close;
        DM.zqGuru.SQL.Text := 'SELECT * FROM guru WHERE username = :username';
        DM.zqGuru.Params.ParamByName('username').AsString := DM.zqEdAccount['username'];
        DM.zqGuru.Open;

        FEdAccount.Close;
      end
    else
      begin
        panelUtama.Enabled := False;
        FEdAccount.Close;
      end;
  except
    on E: Exception do
      ShowMessage('Gagal menyimpan perubahan: ' + E.Message);
  end;
end;

end.
