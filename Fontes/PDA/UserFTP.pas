unit UserFTP;

interface
type TUserFTP = class
      private
        pUser,pPassword,pHost: String;

      public
        procedure VaiParaPasta( APath : String );
        constructor Create(aUser,aPassword,aHost : String);
        property User     : String read pUser     write pUser;
        property Password : String read pPassword write pPassword;
        property Host     : String read pHost     write pHost;
end;
implementation

{ TUserFTP }

constructor TUserFTP.Create(aUser, aPassword, aHost: String);
begin
    Self.pUser     := aUser;
    Self.pPassword := aPassword;
    Self.pHost     := aHost;
end;

procedure TUserFTP.VaiParaPasta(APath: String);
begin

end;

end.
