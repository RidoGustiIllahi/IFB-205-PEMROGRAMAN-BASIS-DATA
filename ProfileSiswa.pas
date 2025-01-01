unit ProfileSiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SMDBCtrl, Buttons, Grids, DBGrids, SMDBGrid,
  DBCtrls, EDBImage;

type
  TFProfileSiswa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;

    dbGridProfile: TSMDBGrid;
    dgGridJadwal: TSMDBGrid;
    dbGridHadir: TSMDBGrid;

    dbLookUpHadir: TDBLookupComboBox;

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
  FProfileSiswa: TFProfileSiswa;

implementation

uses DataModule, Login;

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

end.
