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
    Label5: TLabel;
    dbLookUpHadir: TDBLookupComboBox;
    btnFilter: TBitBtn;
    btnPrintHadir: TBitBtn;
    btnTmbhHadir: TBitBtn;
    dbGridHadir: TSMDBGrid;
    procedure btnLogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditProfileClick(Sender: TObject);
    procedure btnSimpanProfileClick(Sender: TObject);
    procedure btnBatalProfileClick(Sender: TObject);
    procedure btnAccountClick(Sender: TObject);
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

  FProfileSiswa.Hide;
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

  DM.zqEdAccount.Close;
  DM.zqEdAccount.SQL.Text := 'SELECT * FROM auth_login WHERE username = :username';
  DM.zqEdAccount.Params.ParamByName('username').AsString := DM.zqSiswa['username'];
  DM.zqEdAccount.Open;
  
  FEdAccount.panelUtama.Enabled := True;
  FEdAccount.Show;
end;

end.
