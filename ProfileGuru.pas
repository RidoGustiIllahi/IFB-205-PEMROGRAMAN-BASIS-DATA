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
    dbLookUpHadir: TDBLookupComboBox;
    btnPrintHadir: TBitBtn;
    btnTmbhHadir: TBitBtn;
    btnFilter: TBitBtn;
    dbGridHadir: TSMDBGrid;
    btnEditJadwal: TBitBtn;
    btnSimpanJadwal: TBitBtn;
    btnBatalJadwal: TBitBtn;
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
  FProfileGuru: TFProfileGuru;

implementation

uses DataModule, Login, Account;

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

  FProfileGuru.Hide;
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

  DM.zqEdAccount.Close;
  DM.zqEdAccount.SQL.Text := 'SELECT * FROM auth_login WHERE username = :username';
  DM.zqEdAccount.Params.ParamByName('username').AsString := DM.zqGuru['username'];
  DM.zqEdAccount.Open;
  
  FEdAccount.panelUtama.Enabled := True;
  FEdAccount.Show;
end;

end.
