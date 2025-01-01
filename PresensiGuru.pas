unit PresensiGuru;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    dbLookUpPresensi: TDBLookupComboBox;
    edIdKelas: TEdit;
    edKelas: TEdit;
    edTanggal: TEdit;
    edWaktu: TEdit;
    btnBatalHadir: TBitBtn;
    btnHadir: TBitBtn;
    edNis: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
