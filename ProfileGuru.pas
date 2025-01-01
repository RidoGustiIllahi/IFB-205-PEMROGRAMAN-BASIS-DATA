unit ProfileGuru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, EDBImage, DBCtrls, Buttons, Grids, DBGrids,
  SMDBGrid;

type
  TFProfileGuru = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;

    dbLookUpHadir: TDBLookupComboBox;

    dbGridProfile: TSMDBGrid;
    dgGridJadwal: TSMDBGrid;
    dbGridHadir: TSMDBGrid;

    btnAccount: TBitBtn;
    btnFilter: TBitBtn;
    btnPrintHadir: TBitBtn;
    btnLogout: TBitBtn;
    btnEditProfile: TBitBtn;
    btnBatalProfile: TBitBtn;
    btnJadwal: TBitBtn;
    btnTmbhHadir: TBitBtn;
    btnSimpanProfile: TBitBtn;

    EDBImage1: TEDBImage;
    procedure btnLogoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProfileGuru: TFProfileGuru;

implementation

uses DataModule, Login;

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

end.
