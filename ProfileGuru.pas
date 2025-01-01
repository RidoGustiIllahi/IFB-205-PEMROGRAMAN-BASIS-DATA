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
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;

    dbLookUpHadir: TDBLookupComboBox;
    dbLookUpPresensi: TDBLookupComboBox;

    dbGridProfile: TSMDBGrid;
    dgGridJadwal: TSMDBGrid;
    dbGridHadir: TSMDBGrid;

    btnAccount: TBitBtn;
    btnFilter: TBitBtn;
    btnNilai: TBitBtn;
    btnPrintHadir: TBitBtn;
    btnLogout: TBitBtn;
    btnEditProfile: TBitBtn;
    btnBatalProfile: TBitBtn;
    btnJadwal: TBitBtn;
    btnTmbhHadir: TBitBtn;
    btnBatalHadir: TBitBtn;
    btnHadir: TBitBtn;
    btnSimpanProfile: TBitBtn;

    EDBImage1: TEDBImage;

    Panel1: TPanel;

    edNis: TEdit;
    edIdKelas: TEdit;
    edKelas: TEdit;
    edTanggal: TEdit;
    edWaktu: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TFProfileGuru.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FLogin.Close;
end;

end.
