program UASPrakPBD;

uses
  Forms,
  Login in 'Login.pas' {FLogin},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  ProfileSiswa in 'ProfileSiswa.pas' {FProfileSiswa},
  ProfileGuru in 'ProfileGuru.pas' {FProfileGuru},
  Admin in 'Admin.pas' {FAdmin};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFProfileSiswa, FProfileSiswa);
  Application.CreateForm(TFProfileGuru, FProfileGuru);
  Application.CreateForm(TFAdmin, FAdmin);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
